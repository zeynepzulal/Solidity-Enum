// SPDX-License-Identifier:MIT

pragma solidity ^0.8.17;

contract EnumData{
  // enum bizim kendi veri tipimizi olusturmamizi saglar.
  // güncelleneMEyen bir veri tipidir.
  // sabitler listesi

  enum Weekdays {Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday}

  Weekdays public day;

  function setDay(uint _day) public{ //degisiklik yaparken yani set edilirken view veya pure kullanilmaz
       day = Weekdays(_day);
  }

  function getDay() public view returns(Weekdays){
      return day;
  }
  
  function getDayName() public view returns(string memory){
      if(day == Weekdays.Monday){
          return "Monday";
      }
  }
}
