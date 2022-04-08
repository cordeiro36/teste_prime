*Settings*
Documentation    New User Test

Resource    ${EXECDIR}/resources/base.robot

Suite Setup      Start Session
Test Teardown    Finish Test

Test Template    Preenchimento do registro

*Test Cases*

Preenchimento dos campos                     Rafael      Cordeiro     Rua Pedro        rafael@rafael    2196988668    Portuguese    Australia    Australia    1992     April    18          pr180357    pr180357
Preenchimento dos campos (name empty)                    Cordeiro     Rua Pedro        rafael@rafael    2196988668    Portuguese    Australia    Australia    1992     April    18          pr180357    pr180357
Preenchimento dos campos (email empty)       Rafael      Cordeiro     Rua Pedro                         2196988668    Portuguese    Australia    Australia    1992     April    18          pr180357    pr180357
Preenchimento dos campos (phone empty)       Rafael      Cordeiro     Rua Pedro        rafael@rafael                  Portuguese    Australia    Australia    1992     April    18          pr180357    pr180357
Preenchimento dos campos (country empty)     Rafael      Cordeiro     Rua Pedro        rafael@rafael    2196988668    Portuguese                              1992     April    18          pr180357    pr180357
Preenchimento dos campos (password empty)    Rafael      Cordeiro     Rua Pedro        rafael@rafael    2196988668    Portuguese    Australia    Australia    1992     April    18          


*Keywords*

Preenchimento do registro
    [Arguments]                                                                                                                                                                                         ${firstname}    ${lastname}    ${adress}    ${email}    ${phone}    ${languages}    ${country}    ${select_country}    ${year}    ${month}    ${day}    ${password}    ${second_password}
    Dado que desejo preecher os campos do registro
    Quando preencho o formulário "${firstname}""${lastname}""${adress}""${email}""${phone}""${languages}""${country}""${select_country}""${year}""${month}""${day}""${password}""${second_password}"
    E clico no botão Submit
    Então é enviado o formulário
