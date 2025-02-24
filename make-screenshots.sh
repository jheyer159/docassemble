#! /bin/bash
#tempfile=`mktemp /tmp/XXXXXXX.png`
datafile=`mktemp /tmp/XXXXXXX.txt`
featurefile=tests/features/Screenshots.feature
echo -e -n "Feature: screenshots\n  Make screenshots" > $featurefile

shopt -s nullglob
for path in docassemble_base/docassemble/base/data/questions/examples/*.yml docassemble_demo/docassemble/demo/data/questions/examples/*.yml
do
    area=${path%/docassemble*}
    area=${area##*_}
    file=${path##*/}
    file=${file%.*}

    # url="http://localhost?i=docassemble.$area:data/questions/examples/$file.yml&json=1"
    # wget --quiet -O "json_files/"$file".json" "$url"
    # sleep 1
    # continue

    # create anyway:
    # radio-list-mobile
    # yaml-markdown-python
    # turnips-worms

    # do manually:
    # exit-url-referer-fullscreen
    # exit-url-referer-fullscreen-mobile
    # session-interview

    # previously done manually:
    # help-damages-audio
    # help-damages
    # audio

    if [ "$file" = "immediate-file" -o \
	 "$file" = "exit-url-referer-fullscreen" -o \
	 "$file" = "exit-url-referer-fullscreen-mobile" -o \
	 "$file" = "session-interview" -o \
	 "$file" = "address-autocomplete-nz" -o \
	 "$file" = "advocate" -o \
	 "$file" = "alarm-clock" -o \
	 "$file" = "allow-emailing-false-pdf" -o \
	 "$file" = "append-list" -o \
	 "$file" = "attachment" -o \
	 "$file" = "background_action_test_timing" -o \
	 "$file" = "buttons-code-color-iterator" -o \
	 "$file" = "buttons-code-iterator" -o \
	 "$file" = "chat" -o \
	 "$file" = "chat-example-2" -o \
	 "$file" = "checkbox-dict-dict" -o \
	 "$file" = "checkbox-export-value" -o \
	 "$file" = "combobox" -o \
	 "$file" = "command" -o \
	 "$file" = "companies" -o \
	 "$file" = "conflict_check" -o \
	 "$file" = "continue-serial" -o \
	 "$file" = "continue-special" -o \
	 "$file" = "custody" -o \
	 "$file" = "dadatetime" -o \
	 "$file" = "dalist" -o \
	 "$file" = "dalist2" -o \
	 "$file" = "declarative" -o \
	 "$file" = "declarative-classes" -o \
	 "$file" = "default-screen-parts-override" -o \
	 "$file" = "demo-basic-questions" -o \
	 "$file" = "demo-basic-questions-address" -o \
	 "$file" = "demo-basic-questions-name" -o \
	 "$file" = "discovery" -o \
	 "$file" = "dispatch-count" -o \
	 "$file" = "document-language-docx" -o \
	 "$file" = "docx-template-auto" -o \
	 "$file" = "docx-template-code" -o \
	 "$file" = "docx-template-code-2" -o \
	 "$file" = "docx-template-multiple" -o \
	 "$file" = "dual-dict" -o \
	 "$file" = "edit-list-complete-complex" -o \
	 "$file" = "edit-list-manual" -o \
	 "$file" = "empty-choices" -o \
	 "$file" = "empty-choices-checkboxes" -o \
	 "$file" = "empty-choices-checkboxes-solo" -o \
	 "$file" = "empty-choices-fields" -o \
	 "$file" = "empty-choices-fields-multiple" -o \
	 "$file" = "empty-choices-fields-solo" -o \
	 "$file" = "empty-choices-object-checkboxes" -o \
	 "$file" = "empty-choices-object-checkboxes-create" -o \
	 "$file" = "empty-choices-object-checkboxes-solo" -o \
	 "$file" = "empty-choices-object-checkboxes-solo-create" -o \
	 "$file" = "exit-url-referer-fullscreen" -o \
	 "$file" = "exit-url-referer-fullscreen-mobile" -o \
	 "$file" = "field-note" -o \
	 "$file" = "fields-ajax-list-collect" -o \
	 "$file" = "fields-mc-exclude-manual" -o \
	 "$file" = "fields-mc-with-showif" -o \
	 "$file" = "file" -o \
	 "$file" = "flags" -o \
	 "$file" = "flushleft" -o \
	 "$file" = "flushright" -o \
	 "$file" = "forward-chaining" -o \
	 "$file" = "forward-chaining-assumptions" -o \
	 "$file" = "gather" -o \
	 "$file" = "gather-dict-number" -o \
	 "$file" = "gather-fruit-incomplete" -o \
	 "$file" = "gather-manual-gathered-object" -o \
	 "$file" = "gather-manual-gathered-object-simple" -o \
	 "$file" = "gather-set-number" -o \
	 "$file" = "get-docx-variables" -o \
	 "$file" = "get-pdf-fields" -o \
	 "$file" = "get-pdf-fields-2" -o \
	 "$file" = "google-drive" -o \
	 "$file" = "google-sheet-2" -o \
	 "$file" = "harry-potter-or-heidegger" -o \
	 "$file" = "hello" -o \
	 "$file" = "hello2" -o \
	 "$file" = "hello3" -o \
	 "$file" = "hello4" -o \
	 "$file" = "hello5" -o \
	 "$file" = "hello6" -o \
	 "$file" = "hello7" -o \
	 "$file" = "immediate_file" -o \
	 "$file" = "infinite-loop" -o \
	 "$file" = "infinite-loop-2" -o \
	 "$file" = "initial-code" -o \
	 "$file" = "interview-about-flowers" -o \
	 "$file" = "interview-about-fruit" -o \
	 "$file" = "interview-about-vegetables" -o \
	 "$file" = "interview-flowers" -o \
	 "$file" = "interview-fruit" -o \
	 "$file" = "interview-list" -o \
	 "$file" = "interview-url-session" -o \
	 "$file" = "interview-url-session-two" -o \
	 "$file" = "interview-vegetables" -o \
	 "$file" = "jinjayaml-included" -o \
	 "$file" = "join" -o \
	 "$file" = "json-response" -o \
	 "$file" = "language-change" -o \
	 "$file" = "leave" -o \
	 "$file" = "life_story" -o \
	 "$file" = "list" -o \
	 "$file" = "list-collect-disable-others" -o \
	 "$file" = "list-collect-string" -o \
	 "$file" = "list-collect-uncheck-others" -o \
	 "$file" = "list-table-manual-gather" -o \
	 "$file" = "list-table-manual-gather-simple" -o \
	 "$file" = "live_chat" -o \
	 "$file" = "main-page" -o \
	 "$file" = "mainpage-demo-parts" -o \
	 "$file" = "markdown-template" -o \
	 "$file" = "material-icons" -o \
	 "$file" = "ml-ajax" -o \
	 "$file" = "ml-ajax-classify" -o \
	 "$file" = "ml-export-playground" -o \
	 "$file" = "multi-signature" -o \
	 "$file" = "nested-gather" -o \
	 "$file" = "nested-objects-list" -o \
	 "$file" = "no-mandatory" -o \
	 "$file" = "non-required-radio" -o \
	 "$file" = "oauth-test-4" -o \
	 "$file" = "object-default" -o \
	 "$file" = "object-demo" -o \
	 "$file" = "object-radio-address-2" -o \
	 "$file" = "objects-from-file-template" -o \
	 "$file" = "ocr-classify" -o \
	 "$file" = "ocr-save-and-predict" -o \
	 "$file" = "pdf-fill-export-values" -o \
	 "$file" = "pdf-fill-signature-alt" -o \
	 "$file" = "pdf-fill-skip-undefined" -o \
	 "$file" = "question-library" -o \
	 "$file" = "question-sequence" -o \
	 "$file" = "questionless" -o \
	 "$file" = "questions" -o \
	 "$file" = "quotes-in-code" -o \
	 "$file" = "relationships" -o \
	 "$file" = "report-version" -o \
	 "$file" = "response-hello" -o \
	 "$file" = "review-9" -o \
	 "$file" = "roletest" -o \
	 "$file" = "roletestmany" -o \
	 "$file" = "samplequestion" -o \
	 "$file" = "samplesignature" -o \
	 "$file" = "send-sms" -o \
	 "$file" = "session-interview-redirect" -o \
	 "$file" = "setparts-demo" -o \
	 "$file" = "sets-exit" -o \
	 "$file" = "sets-exit-choices" -o \
	 "$file" = "sets-exit-url" -o \
	 "$file" = "showif-boolean-yesno-false" -o \
	 "$file" = "showif-nested-checkbox" -o \
	 "$file" = "sign" -o \
	 "$file" = "signature-diversion" -o \
	 "$file" = "signature-template" -o \
	 "$file" = "signdoc" -o \
	 "$file" = "single-code" -o \
	 "$file" = "sms" -o \
	 "$file" = "some-questions" -o \
	 "$file" = "someone-already-mentioned-bad" -o \
	 "$file" = "someone-already-mentioned2" -o \
	 "$file" = "suppress-loading-util" -o \
	 "$file" = "test" -o \
	 "$file" = "test-docx-template" -o \
	 "$file" = "test-example-list" -o \
	 "$file" = "test-sig-form" -o \
	 "$file" = "test-url" -o \
	 "$file" = "testaction" -o \
	 "$file" = "testaction2" -o \
	 "$file" = "testage" -o \
	 "$file" = "testattach" -o \
	 "$file" = "testbuildfl" -o \
	 "$file" = "testbuildfl2" -o \
	 "$file" = "testcron" -o \
	 "$file" = "testcron2" -o \
	 "$file" = "testcronbg" -o \
	 "$file" = "testdadict" -o \
	 "$file" = "testdalist2" -o \
	 "$file" = "testdaobjectfail" -o \
	 "$file" = "testdaobjectsucceed" -o \
	 "$file" = "testdivorce" -o \
	 "$file" = "testdocx" -o \
	 "$file" = "testemail" -o \
	 "$file" = "testfields" -o \
	 "$file" = "testforloop" -o \
	 "$file" = "testgeneric" -o \
	 "$file" = "testimage" -o \
	 "$file" = "testlist0" -o \
	 "$file" = "testlist1" -o \
	 "$file" = "testlist2" -o \
	 "$file" = "testlist3" -o \
	 "$file" = "testmcmako" -o \
	 "$file" = "testobjectfield" -o \
	 "$file" = "testobjectfieldradio" -o \
	 "$file" = "testobjectlist" -o \
	 "$file" = "testobjects" -o \
	 "$file" = "testperson" -o \
	 "$file" = "testpg" -o \
	 "$file" = "testpickle" -o \
	 "$file" = "testplural" -o \
	 "$file" = "testproblem" -o \
	 "$file" = "testpulldown" -o \
	 "$file" = "testqr" -o \
	 "$file" = "testqr2" -o \
	 "$file" = "testresponse" -o \
	 "$file" = "testreview" -o \
	 "$file" = "testreview2" -o \
	 "$file" = "testreview3" -o \
	 "$file" = "testreview4" -o \
	 "$file" = "testsandbox" -o \
	 "$file" = "testssn" -o \
	 "$file" = "testunicode" -o \
	 "$file" = "testurlarg" -o \
	 "$file" = "testurlarg2" -o \
	 "$file" = "translation" -o \
	 "$file" = "twocol" -o \
	 "$file" = "upload_images" -o \
	 "$file" = "video-static" -o \
	 "$file" = "vimeo" -o \
	 "$file" = "wc_common" -o \
	 "$file" = "wc_side_of_bed" -o \
	 "$file" = "with-mandatory" -o \
	 "$file" = "with-mandatory-tweak-a" -o \
	 "$file" = "with-mandatory-tweak-b" ]
    then
	continue
    fi
    if [ -f ~/gh-pages-da/img/examples/$file.png -a ~/gh-pages-da/img/examples/$file.png -nt $path ]
    then
        continue
    fi
    tempfile=`mktemp /tmp/XXXXXXX.png`
    echo -e -n "\n\n  Scenario: make screenshot for $file\n    Given I launch the interview \"docassemble.${area}:data/questions/examples/${file}.yml\"" >> $featurefile
    if [ "$file" = "signature" -o \
	 "$file" = "metadata" -o \
         "$file" = "help" ]
    then
	echo -e -n "\n    And I wait 6 seconds\n    And I set the window size to 650x1136\n    And I wait 2 seconds\n    And I save a screenshot to \"$tempfile\"\n    And I set the window size to 1005x9999\n    And I wait 2 seconds" >> $featurefile
    elif [ "$file" = "radio-list-mobile" -o \
	   "$file" = "sections-small-screen-dropdown" -o \
	   "$file" = "sections-small-screen-false" ]
    then
	echo -e -n "\n    And I wait 6 seconds\n    And I set the window size to 385x1136\n    And I wait 2 seconds\n    And I save a screenshot to \"$tempfile\"\n    And I set the window size to 1005x9999\n    And I wait 2 seconds" >> $featurefile
    elif [ "$file" = "mainpage-demo-parts" -o \
           "$file" = "setparts-demo" -o \
           "$file" = "default-screen-parts-override" -o \
           "$file" = "metadata-screen-parts" -o \
           "$file" = "default-screen-parts" -o \
           "$file" = "set-parts" ]
    then
	echo -e -n "\n    And I wait 6 seconds\n    And I set the window size to 1005x700\n    And I wait 2 seconds\n    And I save a screenshot to \"$tempfile\"\n    And I set the window size to 1005x9999\n    And I wait 2 seconds" >> $featurefile
    elif [ "$file" = "table" -o "$file" = "table-alt" -o "$file" = "table-mako" -o "$file" = "table-reorder" ]
    then
	echo -e -n "\n    And I set \"Fruit\" to \"apples\"\n    And I set \"Number of seeds\" to \"10\"\n    And I click the button \"Continue\"\n    And I click the button \"Yes\"\n    And I set \"Fruit\" to \"oranges\"\n    And I set \"Number of seeds\" to \"6\"\n    And I click the button \"Continue\"\n    And I click the button \"Yes\"\n    And I set \"Fruit\" to \"pears\"\n    And I set \"Number of seeds\" to \"0\"\n    And I click the button \"Continue\"\n    And I click the button \"No\"\n    And I save a screenshot to \"$tempfile\"" >> $featurefile
    elif [ "$file" = "table-python" ]
    then
	echo -e -n "\n    And I set \"Fruit\" to \"apple\"\n    And I set \"Number of seeds\" to \"12\"\n    And I click the button \"Continue\"\n    And I click the button \"Yes\"\n    And I set \"Fruit\" to \"pear\"\n    And I set \"Number of seeds\" to \"0\"\n    And I click the button \"Continue\"\n    And I click the button \"Yes\"\n    And I set \"Fruit\" to \"watermelon\"\n    And I set \"Number of seeds\" to \"1736\"\n    And I click the button \"Continue\"\n    And I click the button \"No\"\n    And I save a screenshot to \"$tempfile\"" >> $featurefile
    elif [ "$file" = "table-if-then" ]
    then
	echo -e -n "\n    And I set \"Fruit\" to \"apple\"\n    And I set \"Number of seeds\" to \"3\"\n    And I click the button \"Continue\"\n    And I click the button \"Yes\"\n    And I set \"Fruit\" to \"pear\"\n    And I set \"Number of seeds\" to \"0\"\n    And I click the button \"Continue\"\n    And I click the button \"Yes\"\n    And I set \"Fruit\" to \"watermelon\"\n    And I set \"Number of seeds\" to \"1736\"\n    And I click the button \"Continue\"\n    And I click the button \"No\"\n    And I save a screenshot to \"$tempfile\"" >> $featurefile
    elif [ "$file" = "sections" -o "$file" = "sections-horizontal" ]
    then
	echo -e -n "\n    And I click the button \"Continue\"\n    And I select \"Roadmap\" from the menu\n    And I wait 5 seconds\n    And I save a screenshot to \"$tempfile\"" >> $featurefile
    elif [ "$file" = "review-1" -o "$file" = "review-2" -o "$file" = "review-3" -o "$file" = "resume-button-label" -o "$file" = "review-5" -o "$file" = "review-6" ]
    then
	echo -e -n "\n    And I set the text box to \"apple\"\n    And I click the button \"Continue\"\n    And I set the text box to \"turnip\"\n    And I click the button \"Continue\"\n    And I select \"Review Answers\" from the menu\n    And I save a screenshot to \"$tempfile\"" >> $featurefile
    elif [ "$file" = "review-4" ]
    then
	echo -e -n "\n    And I set the text box to \"apple\"\n    And I click the button \"Continue\"\n    And I select \"Review Answers\" from the menu\n    And I save a screenshot to \"$tempfile\"" >> $featurefile
    elif [ "$file" = "review-7" ]
    then
	echo -e -n "\n    And I set the text box to \"apple\"\n    And I click the button \"Continue\"\n    And I set the text box to \"turnip\"\n    And I click the button \"Continue\"\n    And I set the text box to \"button mushrooms\"\n    And I click the button \"Continue\"\n    And I select \"Review Answers\" from the menu\n    And I save a screenshot to \"$tempfile\"" >> $featurefile
    elif [ "$file" = "review-8" ]
    then
	echo -e -n "\n    Then I should see the phrase \"What is your address?\"\n    And I save a screenshot to \"$tempfile\"" >> $featurefile
	#echo -e -n "\n    Then I should see the phrase \"What is your address?\"\n    And I set \"Street address\" to \"418 South 20th Street\"\n    And I set \"City\" to \"Philadelphia\"\n    And I select \"Pennsylvania\" as the \"State\"\n    And I set \"Zip\" to \"19146\"\n    And I click the button \"Continue\"\n    Then I should see the phrase \"You live in Philadelphia County.\"\n    And I click the link \"Review your answers\"\n    And I save a screenshot to \"$tempfile\"" >> $featurefile
    elif [ "$file" = "review-9" ]
    then
	echo -e -n "\n    Then I should see the phrase \"What is a?\"\n    And I set \"a\" to \"10\"\n    And I click the button \"Continue\"\n    Then I should see the phrase \"What is b?\"\n    And I set \"b\" to \"5\"\n    And I click the button \"Continue\"\n    Then I should see the phrase \"What is c?\"\n    And I set \"c\" to \"2\"\n    And I click the button \"Continue\"\n    Then I should see the phrase \"The answer is 13.0.\"\n    And I click the link \"change this\"\n    And I save a screenshot to \"$tempfile\"" >> $featurefile
    elif [ "$file" = "sections-keywords" ]
    then
	echo -e -n "\n    And I click the button \"Continue\"\n    And I save a screenshot to \"$tempfile\"" >> $featurefile
    elif [ "$file" = "audio" ]
    then
	echo -e -n "\n    And I wait 1 second\n    And I save a screenshot to \"$tempfile\"" >> $featurefile
    elif [ "$file" = "table-read-only" -o "$file" = "table-read-only-2" ]
    then
	echo -e -n "\n    Then I should see the phrase \"Do you want to add another fruit to the list?\"\n    And I click the button \"Yes\"\n    Then I should see the phrase \"Tell me about the fruit.\"\n    And I set \"Name\" to \"Grape\"\n    And I set \"Seeds\" to \"0\"\n    And I click the button \"Continue\"\n    Then I should see the phrase \"Do you want to add another fruit to the list?\"\n    And I click the button \"Yes\"\n    Then I should see the phrase \"Tell me about the fruit.\"\n    And I set \"Name\" to \"Watermelon\"\n    And I set \"Seeds\" to \"43\"\n    And I click the button \"Continue\"\n    Then I should see the phrase \"Do you want to add another fruit to the list?\"\n    And I click the button \"No\"\n    And I save a screenshot to \"$tempfile\"" >> $featurefile
    elif [ "$file" = "table-dict-edit" -o "$file" = "table-dict-edit-minimum-number" -o "$file" = "table-dict-edit-delete-buttons" -o "$file" = "table-dict-delete-buttons" -o "$file" = "table-dict-confirm" ]
    then
	echo -e -n "\n    And I click the option \"Yes\" under \"Do you get income from benefits?\"\n    And I wait 1 second\n    And I set \"How much do you get from benefits?\" to \"434\"\n    And I click the button \"Continue\"\n    Then I should see the phrase \"Income from employment\"\n    And I click the option \"No\" under \"Do you get income from employment?\"\n    And I click the button \"Continue\"\n    Then I should see the phrase \"Income from interest\"\n    And I click the option \"Yes\" under \"Do you get income from interest?\"\n    And I wait 1 second\n    And I set \"How much do you get from interest?\" to \"532\"\n    And I click the button \"Continue\"\n    And I save a screenshot to \"$tempfile\"" >> $featurefile
    elif [ "$file" = "review-edit-list-table" ]
    then
	echo -e -n "\n    Then I should see the phrase \"Who is the first person?\"\n    And I set \"First Name\" to \"John\"\n    And I set \"Last Name\" to \"Smith\"\n    And I click the button \"Continue\"\n    Then I should see the phrase \"What is John Smith’s favorite fruit?\"\n    And I set \"Fruit\" to \"apple\"\n    And I click the button \"Continue\"\n    Then I should see the phrase \"Are there any more people you would like to mention?\"\n    And I click the button \"Yes\"\n    Then I should see the phrase \"Who is the second person?\"\n    And I set \"First Name\" to \"Sally\"\n    And I set \"Last Name\" to \"Jones\"\n    And I click the button \"Continue\"\n    Then I should see the phrase \"What is Sally Jones’s favorite fruit?\"\n    And I set \"Fruit\" to \"orange\"\n    And I click the button \"Continue\"\n    Then I should see the phrase \"Are there any more people you would like to mention?\"\n    And I click the button \"No\"\n    And I click the link \"edit your answers\"\n    And I save a screenshot to \"$tempfile\"" >> $featurefile
    elif [ "$file" = "edit-list-non-editable" ]
    then
	echo -e -n "\n    Then I should see the phrase \"Who is the first person?\"\n    And I set \"First Name\" to \"John\"\n    And I set \"Last Name\" to \"Smith\"\n    And I click the button \"Continue\"\n    Then I should see the phrase \"What is John Smith’s favorite fruit?\"\n    And I set \"Fruit\" to \"apple\"\n    And I click the button \"Continue\"\n    Then I should see the phrase \"Are there any more people you would like to mention?\"\n    And I click the button \"Yes\"\n    Then I should see the phrase \"Who is the second person?\"\n    And I set \"First Name\" to \"Sally\"\n    And I set \"Last Name\" to \"Jones\"\n    And I click the button \"Continue\"\n    Then I should see the phrase \"What is Sally Jones’s favorite fruit?\"\n    And I set \"Fruit\" to \"orange\"\n    And I click the button \"Continue\"\n    Then I should see the phrase \"Are there any more people you would like to mention?\"\n    And I click the button \"No\"\n    And I save a screenshot to \"$tempfile\"" >> $featurefile
    elif [ "$file" = "edit-list" ]
    then
	echo -e -n "\n    Then I should see the phrase \"Who is the first person?\"\n    And I set \"First Name\" to \"John\"\n    And I set \"Last Name\" to \"Smith\"\n    And I click the button \"Continue\"\n    Then I should see the phrase \"What is John Smith’s favorite fruit?\"\n    And I set \"Fruit\" to \"apples\"\n    And I click the button \"Continue\"\n    Then I should see the phrase \"Are there any more people you would like to mention?\"\n    And I click the button \"Yes\"\n    Then I should see the phrase \"Who is the second person?\"\n    And I set \"First Name\" to \"Amanda\"\n    And I set \"Last Name\" to \"Martin\"\n    And I click the button \"Continue\"\n    Then I should see the phrase \"What is Amanda Martin’s favorite fruit?\"\n    And I set \"Fruit\" to \"apples\"\n    And I click the button \"Continue\"\n    Then I should see the phrase \"Are there any more people you would like to mention?\"\n    And I click the button \"No\"\n    Then I should see the phrase \"Who is your favorite person?\"\n    And I select \"John Smith\" as the \"Favorite\"\n    And I click the button \"Continue\"\n    Then I should see the phrase \"All done\"\n    And I save a screenshot to \"$tempfile\"" >> $featurefile
    elif [ "$file" = "review-edit-list" ]
    then
	echo -e -n "\n    Then I should see the phrase \"Who is the first person?\"\n    And I set \"First Name\" to \"John\"\n    And I set \"Last Name\" to \"Smith\"\n    And I click the button \"Continue\"\n    Then I should see the phrase \"What is John Smith’s favorite fruit?\"\n    And I set \"Fruit\" to \"apples\"\n    And I click the button \"Continue\"\n    Then I should see the phrase \"Are there any more people you would like to mention?\"\n    And I click the button \"Yes\"\n    Then I should see the phrase \"Who is the second person?\"\n    And I set \"First Name\" to \"Jane\"\n    And I set \"Last Name\" to \"Doe\"\n    And I click the button \"Continue\"\n    Then I should see the phrase \"What is Jane Doe’s favorite fruit?\"\n    And I set \"Fruit\" to \"kiwi\"\n    And I click the button \"Continue\"\n    Then I should see the phrase \"Are there any more people you would like to mention?\"\n    And I click the button \"No\"\n    Then I should see the phrase \"Who is your favorite person?\"\n    And I select \"Jane Doe\" as the \"Favorite\"\n    And I click the button \"Continue\"\n    Then I should see the phrase \"Thank you for your answers!\"\n    And I should see the phrase \"The people are John Smith and Jane Doe and your favorite is Jane Doe.\"\n    And I click the link \"edit your answers\"\n    And I save a screenshot to \"$tempfile\"" >> $featurefile
    elif [ "$file" = "breadcrumbs" ]
    then
	echo -e -n "\n    Then I should see the phrase \"Who is the first person?\"\n    And I set \"First Name\" to \"John\"\n    And I set \"Last Name\" to \"Smith\"\n    And I click the button \"Continue\"\n    Then I should see the phrase \"What is John Smith’s favorite fruit?\"\n    And I set \"Fruit\" to \"apples\"\n    And I click the button \"Continue\"\n    Then I should see the phrase \"Are there any more people you would like to mention?\"\n    And I click the button \"Yes\"\n    Then I should see the phrase \"Who is the second person?\"\n    And I set \"First Name\" to \"Jane\"\n    And I set \"Last Name\" to \"Doe\"\n    And I click the button \"Continue\"\n    Then I should see the phrase \"What is Jane Doe’s favorite fruit?\"\n    And I set \"Fruit\" to \"peaches\"\n    And I click the button \"Continue\"\n    Then I should see the phrase \"Are there any more people you would like to mention?\"\n    And I click the button \"No\"\n    Then I should see the phrase \"Thank you for your answers!\"\n    And I click the link \"edit your answers\"\n    Then I should see the phrase \"Edit your answers\"\n    And I click the first link \" Edit\"\n    And I click the button \"Continue\"\n    And I click the link \"types of fruit\"\n    Then I should see the phrase \"Fruit types\"\n    And I save a screenshot to \"$tempfile\"" >> $featurefile
    else
	echo -e -n "\n    And I save a screenshot to \"$tempfile\"" >> $featurefile
    fi
    echo -e -n "${file}\t${area}\t${tempfile}\n" >> $datafile
done

cd tests
behave features/Screenshots.feature
if [ $? -ne 0 ]
then
    echo "Failure while making screenshots"
    exit 1
fi
cd ..

while IFS=$'\t' read -r -a col
do
    file=${col[0]}
    area=${col[1]}
    tempfile=${col[2]}
    if [ "$file" = "signature" -o \
         "$file" = "breadcrumbs" -o \
	 "$file" = "metadata" -o \
	 "$file" = "no-mandatory" -o \
         "$file" = "help" -o \
         "$file" = "help-damages" -o \
         "$file" = "progress" -o \
         "$file" = "progress-features" -o \
         "$file" = "progress-features-percentage" -o \
	 "$file" = "progress-multi" -o \
         "$file" = "response" -o \
         "$file" = "response-hello" -o \
         "$file" = "menu-item" -o \
         "$file" = "ml-export" -o \
         "$file" = "ml-export-yaml" -o \
         "$file" = "live_chat" -o \
         "$file" = "review-side-note" -o \
         "$file" = "side-html" -o \
         "$file" = "side-note" -o \
         "$file" = "bootstrap-theme" -o \
         "$file" = "flash" -o \
         "$file" = "log" -o \
         "$file" = "show-login" -o \
         "$file" = "branch-error" -o \
         "$file" = "error-help" -o \
         "$file" = "error-help-language" -o \
         "$file" = "set-logo-title" -o \
         "$file" = "question-help-button" -o \
         "$file" = "question-help-button-off" -o \
         "$file" = "right" -o \
         "$file" = "sections" -o \
         "$file" = "sections-horizontal" -o \
         "$file" = "sections-keywords" -o \
         "$file" = "sections-keywords-code" -o \
         "$file" = "sections-keywords-get-sections" -o \
         "$file" = "sections-keywords-review" -o \
         "$file" = "sections-keywords-set-sections" -o \
	 "$file" = "sections-non-progressive" -o \
         "$file" = "sections-auto-open" -o \
         "$file" = "centered" -o \
	 "$file" = "pre" -o \
         "$file" = "mainpage-demo-parts" -o \
         "$file" = "setparts-demo" -o \
         "$file" = "default-screen-parts-override" -o \
         "$file" = "metadata-screen-parts" -o \
         "$file" = "default-screen-parts" -o \
         "$file" = "set-parts" -o \
         "$file" = "navbar-language" -o \
         "$file" = "preview" ]
    then
	convert $tempfile -background white -splice 0x1 -background black -splice 0x1 -trim +repage -chop 0x1 -resize 488x9999 ~/gh-pages-da/img/examples/$file.png
    elif [ "$file" = "radio-list-mobile" -o \
           "$file" = "sections-small-screen-dropdown" -o \
	   "$file" = "sections-small-screen-false" ]
    then
	convert $tempfile -background white -splice 0x1 -background black -splice 0x1 -trim +repage -chop 0x1 ~/gh-pages-da/img/examples/$file.png
    elif [ "$file" = "markdown" -o "$file" = "allow-emailing-true" -o "$file" = "allow-emailing-false" -o "$file" = "markdown-demo" -o "$file" = "document-links" -o "$file" = "document-links-limited" -o "$file" = "allow-downloading-true" ]
    then
	convert $tempfile -crop 488x999+259+92 -background white -splice 0x1 -background black -splice 0x1 -trim +repage -chop 0x1 ~/gh-pages-da/img/examples/$file.png
    elif [ "$file" = "inverse-navbar" ]
    then
	convert $tempfile -crop 1005x260+0+0 ~/gh-pages-da/img/examples/$file.png
    elif [ "$file" = "fields" -o "$file" = "attachment-code" -o "$file" = "attachment-simple" -o "$file" = "document-markup" -o "$file" = "document-variable-name" -o "$file" = "document-cache-invalidate" -o "$file" = "address-autocomplete-test"  -o "$file" = "address-autocomplete-test" -o "$file" = "table-width" -o "$file" = "document-language" -o "$file" = "allow-downloading-true" -o "$file" = "allow-downloading-true-zip-filename" -o "$file" = "document-docx" -o "$file" = "document-docx-from-rtf" -o "$file" = "document-file" -o "$file" = "google-sheet-3" ]
    then
	convert $tempfile -crop 488x1999+259+92 -background white -splice 0x1 -background black -splice 0x1 -trim +repage -chop 0x1 ~/gh-pages-da/img/examples/$file.png
    else
	convert $tempfile -crop 488x630+259+92 -background white -splice 0x1 -background black -splice 0x1 -trim +repage -chop 0x1 ~/gh-pages-da/img/examples/$file.png
    fi
    rm -f $tempfile
done < $datafile
rm -f $datafile

if [ -d ~/gh-pages-da ]
then
    ./get_yaml_from_example.py docassemble_base/docassemble/base/data/questions/examples ~/gh-pages-da/img/examples > ~/gh-pages-da/_data/example.yml
    ./get_yaml_from_example.py docassemble_demo/docassemble/demo/data/questions/examples ~/gh-pages-da/img/examples >> ~/gh-pages-da/_data/example.yml
    #rsync -auv docassemble_webapp/docassemble/webapp/static/examples ~/gh-pages-da/img/
    list_of_files=`mktemp /tmp/XXXXXXX.txt`
    grep '^    - ' docassemble_base/docassemble/base/data/questions/example-list.yml | sed 's/^    - \(.*\)/\1.png/' > $list_of_files
    rsync -auv --files-from=$list_of_files ~/gh-pages-da/img/examples docassemble_webapp/docassemble/webapp/static/examples/
    rm $list_of_files
    psql -h localhost -T 'class="table table-striped"' -U docassemble -P footer=off -P border=0 -Hc "select table_name, column_name, data_type, character_maximum_length, column_default from information_schema.columns where table_schema='public'" docassemble > ~/gh-pages-da/_includes/db-schema.html
fi
