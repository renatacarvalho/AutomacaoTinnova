*** Settings ***
Resource    ../main.robot

*** Variables ***
&{geral}
...    URL=https://tinnova-teste-qa.vercel.app/
...    Browser=chrome
...    Options=add_experimental_option('excludeSwitches',['enable-logging'])