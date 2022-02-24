#include "spreadsheet.cpp"

#include "gtest/gtest.h"

#include <sstream>

TEST(SpecialCase1,test){
    Spreadsheet sheet;
    sheet.set_column_names({"First","Last","Age","Major"});
    sheet.add_row({"Jane","Kaye","21","computer science"});
    sheet.add_row({"Amanda","Dole","22","business"});
    std::stringstream ss;
    sheet.set_selection(new Select_Contains(&sheet,"Last","Dole"));
    sheet.print_selection(ss);
    EXPECT_NE("Amanda dole 22 business ",ss.str()); 

} 
TEST(SpecialCase2,test){
    Spreadsheet s;
    s.set_column_names({"First","Last","Age","Major"});
    s.add_row({"Jane","Kayes","21","computer science"});
    std::stringstream ss;
    s.set_selection(new Select_Contains(&s,"Last","Kaye"));
    s.print_selection(ss);
    EXPECT_EQ("Jane Kayes 21 computer science\n",ss.str());
}
TEST(SpecialCase3,test){
    Spreadsheet s;
    s.set_column_names({"First","Last","Age","Major"});
    s.add_row({"Amanda","Dole","22","business"});
    s.set_selection(new Select_Contains(&s,"Last",""));    
    std::stringstream ss;
    s.print_selection(ss);    
    EXPECT_EQ("Amanda Dole 22 business\n",ss.str());
}
TEST(SpecialCase4,test){
    Spreadsheet s;
    s.set_column_names({"First","Last","Age","Major"});
    s.add_row({"Amanda","Dole","22","business"});
    s.set_selection(new Select_Contains(&s,"Last","Doles"));
    std::stringstream ss;
    s.print_selection(ss);
    EXPECT_NE("Amanda Dole 22 business\n",ss.str());
}
TEST(TestAnd,test){
    Spreadsheet s;
    s.set_column_names({"First","Last","Age","Major"});
    s.add_row({"Amanda","Dole","22","business"});
    s.add_row({"Angel","Dole","20","mathematics"});
    std::stringstream ss;
    s.set_selection(new Select_And(new Select_Contains(&s,"Last","Dole"),
                                   new Select_Contains(&s,"Age","20")));
    s.print_selection(ss);
    EXPECT_EQ("Angel Dole 20 mathematics\n",ss.str());
}
TEST(TestOr,test){
    Spreadsheet s;
    s.set_column_names({"First","Last","Age","Major"});
    s.add_row({"Amanda","Dole","22","business"});
    s.add_row({"Noah","Emma","21","computer science"});
    std::stringstream ss;
    s.set_selection(new Select_Or(new Select_Contains(&s,"Last","Emma"),
                                  new Select_Contains(&s,"Age","20")));
    s.print_selection(ss);
    EXPECT_EQ("Noah Emma 21 computer science\n",ss.str());
}
TEST(TestNot,test){
    Spreadsheet s;
    s.set_column_names({"First","Last","Age","Major"});
    s.add_row({"Brian","Dole","21","computer science"});
    s.add_row({"Diane","Dole","20","computer engineering"});
    std::stringstream ss;
    s.set_selection(new Select_And(new Select_Contains(&s,"Last","Dole"),
                                   new Select_Not(new Select_Contains(&s,"Age","21"))));
    s.print_selection(ss);
    EXPECT_EQ("Diane Dole 20 computer engineering\n",ss.str());
}


int main(int argc, char **argv) {
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
