*Settings*
Documentation    Elementos da página Register

Resource    ${EXECDIR}/resources/base.robot

*Variables*
${TXT_FIRSTNAME}          css=input[placeholder*="First Name"]
${TXT_LASTNAME}           css=input[placeholder*="Last Name"]
${TXT_ADRESS}             xpath=//*[@id="basicBootstrapForm"]/div[2]/div/textarea
${TXT_EMAIL}              xpath=//*[@id="eid"]/input
${TXT_PHONE}              xpath=//*[@id="basicBootstrapForm"]/div[4]/div/input
${LBL_MALE}               xpath=//*[@id="basicBootstrapForm"]/div[5]/div/label[1]/input
${LBL_FEMALE}             xpath=//*[@id="basicBootstrapForm"]/div[5]/div/label[2]/input
${CHK_CRICKET}            css=input[id="checkbox1"]
${CHK_MOVIES}             css=input[id="checkbox2"]
${CHK_HOCKEY}             css=input[id="checkbox3"]
${TXT_LANGUAGES}          css=input[id="msdd"]                                             
${TXT_COUNTRY}            css=input[id="countries"]
${TXT_SELECT_COUNTRY}     css=input[id="select2-country-container"]
${TXT_YEAR}               css=input[placeholder*="Year"]                                   
${TXT_MONTH}              css=input[placeholder*="Month"] 
${TXT_DAY}                css=input[placeholder*="Day"] 
${TXT_PASSWORD}           xpath=//*[@id="firstpassword"]
${TXT_SECOND_PASSWORD}    xpath=//*[@id="secondpassword"]
${BTN_SUBMIT}             Submit
${BTN_REFRESH}            Refresh
${DIV_ALERT}              .alert                                                           

*Keywords*

Dado que desejo preecher os campos do registro

    Wait For Elements State    ${TXT_FIRSTNAME}    visible    10

Quando preencho o formulário "${firstname}""${lastname}""${adress}""${email}""${phone}""${languages}""${country}""${select_country}""${year}""${month}""${day}""${password}""${second_password}"

    Fill Text            ${TXT_FIRSTNAME}          ${firstname}
    Fill Text            ${TXT_LASTNAME}           ${lastname}
    Fill Text            ${TXT_ADRESS}             ${adress}
    Fill Text            ${TXT_EMAIL}              ${email}
    Fill Text            ${TXT_PHONE}              ${phone}
    Click                ${LBL_MALE}               #${male}
    Click                ${LBL_FEMALE}             ${female}
    Click                ${CHK_CRICKET}            #${cricket}
    Click                ${CHK_MOVIES}             #${movies}
    Click                ${CHK_HOCKEY}             #${hockey}
    Fill Text            ${TXT_LANGUAGES}          ${languages}
    Select Options By    ${TXT_LANGUAGES}          ${languages}
    Fill Text            ${TXT_COUNTRY}            ${country}
    Select Options By    ${TXT_SELECT_COUNTRY}     ${select_country}
    Fill Text            ${TXT_YEAR}               ${year}
    Fill Text            ${TXT_MONTH}              ${month}
    Fill Text            ${TXT_DAY}                ${day}
    Fill Text            ${TXT_PASSWORD}           ${password}
    Fill Text            ${TXT_SECOND_PASSWORD}    ${second_password}

E clico no botão Submit

    Click    ${BTN_SUBMIT}

E clico no botão Refresh

    Click    ${BTN_REFRESH}

Então é enviado o formulário

