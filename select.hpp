#ifndef __SELECT_HPP__
#define __SELECT_HPP__

#include <iostream>
#include <cstring>

class Select
{
public:
    virtual ~Select() = default;

    // Return true if the specified row should be selected.
    virtual bool select(int row) const = 0;
    virtual int get_rows_size() const = 0;
};


class Select_Contains: public Select{
protected:
    int column;
    bool* Rows;
    int size;

public:
    ~Select_Contains(){
        delete[] Rows;
    }

    Select_Contains(const Spreadsheet* sheet, const std::string& col, const std::string& str){

	size = sheet->get_row_size();
        Rows = new bool[sheet->get_row_size()];
	column = sheet->get_column_by_name(col);
	for(int i = 0; i < sheet->get_row_size(); i++){
	    Rows[i] = false;
	
	    if(column != -1){
	        for(int i = 0; i < sheet->get_row_size(); i++){
		    if(sheet->cell_data(i, column).find(str) != std::string::npos){
		        Rows[i] = true;
		    }
		}
	    }
	
	}
    }
    virtual bool select(int row) const{
       return Rows[row];
    }

    virtual int get_rows_size() const{
       return size; 
    }

};


class Select_Not: public Select{
protected:
    bool* Rows;
    int size;

public:
    ~Select_Not(){
        delete []Rows;
    }

    Select_Not(Select* sel){
	Rows = new bool[sel->get_rows_size()];
        size = sel->get_rows_size();       
	for(int i = 0; i < sel->get_rows_size(); i++){
	    Rows[i] = !sel->select(i);
	}
	delete sel;
    }
                
    virtual bool select(int row) const{
       return Rows[row];
    }

    virtual int get_rows_size() const{
       return size;
    }
};


class Select_And: public Select{
protected:
    int size;
    bool* Rows;

public:
    ~Select_And(){
        delete []Rows;
    }

    Select_And(Select* left, Select* right){
        size = left->get_rows_size();
        Rows = new bool[size];
        for(int i = 0; i < size; i++){
	    if(left->select(i) && right->select(i)){
	        Rows[i] = true;
	    }
	    else
	    {
	        Rows[i] = false;
	    }
	}
	delete left;
	delete right;
    }

    virtual bool select(int row) const{
        return Rows[row];
    }

    virtual int get_rows_size() const{
        return size; 
    }


};


class Select_Or: public Select{
protected:
    bool* Rows;
    int size;

public:
    ~Select_Or(){
        delete []Rows;
    }

    Select_Or(Select* left, Select* right){
	size = left->get_rows_size();
        Rows = new bool[size];
	for(int i = 0; i < size; i++){
	    if(!(left->select(i)) && !(right->select(i))){
	        Rows[i] = false;
	    }
	    else{
	        Rows[i] = true;
	    }
	
	}
	delete left;
	delete right;
    }
    virtual bool select(int row) const{
        return Rows[row];
    }
    virtual int get_rows_size() const{
        return size;
    
    }   

};

// A common type of criterion for selection is to perform a comparison based on
// the contents of one column.  This class contains contains the logic needed
// for dealing with columns. Note that this class is also an abstract base
// class, derived from Select.  It introduces a new select function (taking just
// a string) and implements the original interface in terms of this.  Derived
// classes need only implement the new select function.  You may choose to
// derive from Select or Select_Column at your convenience.
class Select_Column: public Select
{
protected:
    int column;
public:
    Select_Column(const Spreadsheet* sheet, const std::string& name)
    {
        column = sheet->get_column_by_name(name);
    }

//  virtual bool select(const Spreadsheet* sheet, int row) const
  //  {
  //      return select(sheet->cell_data(row, column));
//  }

    // Derived classes can instead implement this simpler interface.
  //  virtual bool select(const std::string& s) const = 0;
};

#endif //__SELECT_HPP__
