import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../services/drawer.dart';

class Terms extends StatelessWidget {
  Terms({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldState> _logoutScaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: MyDrawer(
        scaffoldKey: _scaffoldKey,
        logoutScaffoldKey: _logoutScaffoldKey,
      ),

      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(
                  text: 'Terms \n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:'Modified: June 25, 2023 \n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  'PickLord™ Terms of Service\n\n'
                  'PLEASE READ THESE TERMS CAREFULLY BEFORE USING THIS SITE\n\n'
                    ' Welcome to PickLord! PickLord is a fantasy sports platform that offers skill-based contests where you can put'
                      ' your skills and knowledge to the test for an opportunity to win pre-determined cash prizes (the “Contest”). Each'
              ' entry consists of a roster of athletes or players that accumulate statistics on behalf of your team to help you win your'
          ' Contest. There is a range of different Contest types and roster sizes you can choose to play; different Contests and'
          ' roster sizes correspond to different pre-determined payouts. Before using PickLord, please take some time to'
          ' carefully read our Terms of Service below (“Terms”). Our Member Code of Conduct (“Code of Conduct”) is'
        ' attached as Exhibit A to these Terms, and our Privacy Policy (“Privacy Policy”) is located at'
      ' https://www.PickLord.com/privacy-policy; both of these documents are expressly incorporated into these Terms'
      ' and you are agreeing to them by acknowledging your receipt and acceptance of the Terms and documents contained'
      ' herein.\n\n'
                  ' IMPORTANT NOTICE: PLEASE READ THESE TERMS CAREFULLY, THEY CONTAIN A BINDING'
                  ' ARBITRATION PROVISION AND A CLASS ACTION WAIVER THAT AFFECT YOUR LEGAL'
                  ' RIGHTS AND REMEDIES AS DETAILED IN SECTION 23 TITLED ARBITRATION AND CLASS'
                ' ACTION WAIVER. PLEASE READ CAREFULLY. IT IS YOUR RIGHT TO CONSULT WITH AN'
                ' ATTORNEY OR OTHER ADVISOR PRIOR TO ACCEPTING THE TERMS AND PARTICIPATING IN'
                ' ANY OF OUR CONTESTS. WE STRONGLY ENCOURAGE YOU TO DO SO BEFORE PROCEEDING. \n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '1. Acceptance of Terms. \n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                TextSpan(
                  text:
                  ' By using the website www.PickLord.com (including all the areas available through such website, collectively, the'
                  ' “Site”), downloading the PickLord mobile application (“App”), and/or by creating an Account (as further defined'
            ' below) and using the various fantasy sports services (collectively, such services, including any new features and'
          ' applications, together with the Site and App, are referred to as the “Services”) offered by PickLord LLC a/k/a'
    ' Performance Predictions LLC d/b/a PickLord, each of which is a limited liability company in good'
        ' standing, (collectively with their parents, subsidiaries, affiliates, agents, representatives, consultants, employees,'
    ' officers, and directors, “PickLord,” “we,” “us,” “our,” and/or “Company”) you, the user (collectively “User(s)”'
   ' or “you”), acknowledge and agree to be irrevocably bound by these legally binding Terms, including, but not limited'
    ' to the following the PickLord Privacy Policy, PickLord Full Rules, individual Contest rules, the PickLord'
    ' Member Code of Conduct, and all other operating rules, game rules, policies, and procedures that may be published'
    ' on the Services by PickLord, which are expressly incorporated herein by reference. In addition, some Services may'
    ' be subject to additional terms and conditions adopted by PickLord. Your use of those Services means you agree to'
    ' be subject to those additional terms and conditions, which are herein incorporated into these Terms by reference.'
    ' By downloading the App and/or clicking the “agree” button on the Site or App’s sign up page, you (a) acknowledge'
    ' that you have read and understood the Terms; (b) represent that you are of legal age to enter into a binding'
    ' agreement; (c) accept the Terms and agree that you are legally bound by it; and (d) agree, subject to opting out, to'
    ' resolve all disputes through binding arbitration in accordance with Section 23 of the Terms. If you do not agree to'
    ' these requirements, do not use the Services, deactivate your Account, and delete the App from your devices. \n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '2. Modification to Terms and Code of Conduct. \n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' Except as it relates to provisions regarding binding arbitration and waiver of class action rights, PickLord reserves'
                    ' the right, at its sole unlimited discretion, to modify or replace the Terms or Code of Conduct at any time. The most'
                ' current version of these Terms and Code of Conduct will be available via the Site and App.'
                    ' Ongoing Contests (as further defined below) shall be subject to the version of the Terms that is in effect at the start'
         ' of the Contest. Further, all actions and matters specifically related to fraud, misrepresentation, cheating, theft, or'
              ' other conduct that PickLord, in its sole and unlimited discretion, deems to be improper, shall be governed by the'
          ' most recent version of these Terms.'
          ' It is your responsibility to check the Terms and Code of Conduct periodically for changes; you shall be responsible'
          ' for reviewing and becoming familiar with changes to the Terms and Code of Conduct. If a revision to the Terms, in'
          ' our sole unlimited discretion, is material, we will notify you thereof via App or Site notification and/or by contacting'
          ' you through the email address associated with your Account. The Parties agree that any means of notification'
          ' described herein are reasonable and conspicuous. The Parties further agree that any notification received within a'
          ' reasonable timeframe following revision(s) to the Terms or Code of Conduct is appropriate and sufficient for'
        ' providing the necessary notice of such revision(s). Use of the Services, including but not limited to logging into your'
      ' Account or otherwise accessing the App or Site in any capacity other than for the exclusive purpose of reviewing'
      ' these Terms or the Code of Conduct, by you after any modification(s) or revision(s) to the thereto constitutes your'
    ' acceptance of the modified or revised Terms or Code of Conduct in full.'
    ' PickLord reserves the right to modify, suspend, or discontinue the Services, including, but not limited to, the'
    ' availability of any text, graphics, sounds, files, software or other information found on the Site and App'
    ' (collectively, “Content”), feature, or database, whether temporarily or permanently, at any time for any reason. You'
    ' agree that PickLord shall not be liable to you or to any third party for any modification, suspension, or'
    ' discontinuation of the Services. PickLord may also impose limits on certain features and services or restrict your'
    ' access to parts or all of the Services without notice or liability. \n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '3. License Grant. \n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' Subject to the terms of these Terms, PickLord grants you a limited, nonexclusive, and nontransferable license to:'
                    ' (a) download, install, and use the App for your personal, noncommercial use on handheld and mobile'
          ' devices owned or otherwise controlled by you (collectively, “Device”) strictly in accordance with'
        ' the App’s documentation; and'
            ' (b) access, stream, download, and use on such Device, the Services made available in or otherwise'
      ' accessible through the Site or App, strictly in accordance with the Terms. \n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '4. Reservation of Rights. \n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' You acknowledge and agree that the Services are provided under license as described in the Terms, and not sold, to'
                   ' you. You do not acquire any ownership interest in the Services under the Terms, or any other rights thereto other'
                ' than to use the Services in accordance with the license granted, subject to all terms, conditions, and restrictions'
                    ' under the Terms. You may not (a) modify the Content or use the Content or Services for any commercial purpose or'
              ' any public display, performance, sale or rental; (b) decompile, reverse engineer, or disassemble software Content'
        ' except and only to the extent permitted by applicable law; (c) remove any copyright or other proprietary notices'
      ' from the Content; or (d) transfer the Content to another person. PickLord and its licensors and service providers'
      ' reserve and retain their entire right, title, and interest in and to the Content and Services, including all copyrights,'
      ' trademarks, and other intellectual property rights therein or relating thereto, except as expressly granted to you in the'
    ' Terms. PickLord shall have the right to assert and enforce the provisions of this Section 4 directly on its own behalf'
    ' or on behalf of any relevant third-party.'
    ' PickLord may terminate this license at any time if you are in breach of these Terms. Upon termination, you agree to'
    ' immediately destroy any copies of the Content in your possession. \n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '5. PickLord Account. \n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' You may view Content on the Site or App without registering for an Account, but as a condition of using certain'
                    ' aspects of the Services, including entering Contests, Depositing (as defined below) and withdrawing funds or'
                    ' redeeming promo or bonus funds, you are required to create a PickLord account (“Account”). As of the Effective'
              ' Date, Users must be at least eighteen (18) years of age to open an Account, unless a User resides in an Eligible'
        ' Jurisdiction (as further defined below) that requires a higher age of eligibility, in which case the User must be at'
      ' least the minimum age required by law in that Eligible Jurisdiction. It is your sole and ultimate responsibility as the'
      ' User to provide honest and accurate information regarding your age and birthdate, and to know the minimum age to'
      ' participate in Contests for the Eligible Jurisdiction in which you are located at any given time.'
      ' To sign up for an Account, you must submit a username, password, mailing address, phone number, driver’s license,'
      ' date of birth, and social security number. You must provide accurate, complete, and updated contact information,'
      ' identification details, and any other personal identifying information and/or form of authentication that PickLord'
      ' may, in its sole and unlimited discretion, request, including, but not limited to, personal identifying, financial or'
      ' banking information necessary for the purposes of: tax reporting, third party or regulatory audits, reports to any law'
      ' enforcement or other governmental or quasi-governmental agency or otherwise to assist PickLord in the'
      ' performance of its duties and obligations. To enter Contests that require an entry fee you will first need to deposit'
          ' funds into your Account (“Deposit” or “Depositing”). In order to Deposit, you may be required to submit your'
    ' billing information as well as additional personal, financial or baking information. If your Account information'
      ' changes, then you must provide us with accurate and complete information.'
    ' You may not use a username that promotes a commercial venture or a username that PickLord, in its sole'
    ' discretion, deems offensive or otherwise a violation of the Terms or Code of Conduct. PickLord may require you to'
    ' change your username or may unilaterally change your username. \n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '5.1. Account Misuse, MultiAccounting, Account Sharing\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' You agree that the sole and specific purpose of creating an Account on PickLord is to participate in Contests.'
                    ' PickLord shall be entitled to suspend, limit, deactivate or terminate your Account, if we determine, in our sole'
                ' discretion, that you are violating these Terms; violating or conspiring to violate any local, state or federal law or'''
                ' regulation; depositing funds without the intention of using them in Contests; violating, or causing PickLord to'
                ' violate any agreement it has with any third party, including payment processors and other financial institutions; or'
                ' otherwise abusing or misusing the Services in any way whatsoever. We may also report such activity to relevant'
                ' authorities and/or third-parties (including, but not limited to, PickLord’ vendors and partners, payment processors,'
                ' banks, and credit card companies) and provide any and all of your personal, financial, banking or other information'
          ' we possess or have access to.'
          ' Each User may establish only one (1) Account. Users may not “co-own” or share Accounts. Users may not use or in'
        ' any way control another person’s Account. Users shall not direct, control, control or otherwise use another User’s'
        ' Account in any manner whatsoever, including as a proxy for the User’s own Account, to make Contest entries, or to'
            ' evade any restrictions, limitations or suspensions placed on the User’s own Account. Further, Users may not use,'
            ' direct, or control any Account other than their own for any purpose, including, but not limited to avoiding Account'
            ' limits, suspensions, responsible gaming related limitations, evading other Account restriction(s) whether'
          ' self-imposed or imposed by PickLord, or abusing promotional or bonus offerings, such as referral bonuses, for'
          ' which each Account is eligible. The Account misuses and duplications described in this Section 5 shall collectively'
      ' be referred to as “MultiAccounting”. MultiAccounting is a violation of these Terms and a violation of state law or'
          ' regulation in many of the states in which PickLord operates. In the event that PickLord, in its sole and unlimited'
      ' discretion, determines that you have committed MultiAccounting, then, in addition to any other rights that'
          ' PickLord may have at law, equity or created herein, PickLord reserves the right to: (i) suspend or terminate any or'
    ' all of your Accounts (and all other Accounts associated with the MultiAccounting); (ii) cancel any pending or'
    ' in-progress entries made on the Accounts associated with the MultiAccounting; (iii) demand and/or seize all funds'
    ' earned by you by participating in Contests during the time period of the MultiAccounting; (iv) terminate, withhold,'
    ' or revoke the awarding of any prizes, including prizes that you have already withdrawn from your Account; (v) seize'
    ' or remove all promotional balances, bonuses or free entries previously awarded to each Account(s); (vi) seize all'
    ' real-money funds in the Account(s) at issue or earned by the User(s) at issue during the course of MultiAccounting;'
    'and (vii) report you to any relevant authorities for violation of state laws and regulations. \n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '5.2. Account Confidentiality\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' You are solely responsible for maintaining the confidentiality of your Account and password and for restricting'
                    ' access to your computer or other Device(s). You agree to accept full responsibility for all activities, charges, and'
            ' damages that occur under your Account. It is a violation of these Terms to knowingly allow another person to use'
            ' your Account to participate in a Contest. If you discover an unauthorized use of your Account, or other known'
            ' Account-related security breach, you must report it to PickLord immediately. You agree that you are responsible'
          ' for anything that happens through your Account until you close your Account or prove that your Account security'
            ' was compromised due to no fault of your own. PickLord shall not be liable for any loss or damage arising from'
          ' your failure to comply with this Section 5.2.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '6. Eligibility for Contests\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' Generally, you may access the Site and App in any state, territory, or jurisdiction. However, in order to enter'
                    ' Contests, you must be physically located within one of the states, territories, or jurisdictions in which PickLord'
                ' operates and is made available for consumer play (collectively, “Eligible Jurisdictions,” and each an “Eligible'
                ' Jurisdiction”). A full list of Eligible Jurisdictions, which may be updated from time to time at PickLord’ sole'
              ' discretion, can be found at www.PickLord.com. “Excluded Jurisdiction(s)” shall mean the states, territories, and'
          ' jurisdictions that are not Eligible Jurisdictions.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '6.1. Age Restrictions\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' As of the Effective Date, you must be at least eighteen (18) years of age to participate in Contests or win prizes'
                    ' offered through Contests.* You are responsible for consulting each Eligible Jurisdiction’s rules to determine the'
                ' minimum age of eligibility, but in no instance may a User enter a Contest or be eligible to win a prize offered if the'
                ' User is less than eighteen (18) years of age at the time of the Contest.'
          ' *Users who are still 18 years of age as of the Effective Date but are otherwise eligible to be a User may continue to'
           ' have an Account, Deposit, and enter Contests.'
          ' Certain Eligible Jurisdictions have a more restrictive minimum age. In the following Eligible Jurisdictions, you must'
            ' be of the age listed below to participate in Contests:\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '6.2 General Eligibility\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' By creating an Account, Depositing, claiming promo funds, or entering a Contest, you are representing and'
                    ' warranting that:\n\n'
                    ' ● you are eighteen (18) years of age or older (or the minimum age for permissible use in your local'
          ' jurisdiction if such minimum age is greater than 18);\n\n'
            ' ● you are a citizen or resident of Nigeria and you have an address in Nigeria;\n\n'
        ' ● at the time of Deposit or Contest entry, you are physically located in an Eligible Jurisdiction;\n\n'
        ' ● you are not listed on any governmental list of prohibited, restricted or self-excluded individuals\n\n'
        ' related to gaming or gambling of any kind;\n\n'
        ' ● you will abide at all times by these Terms, the Code of Conduct, and any other agreements between'
        ' you and PickLord regarding your use of the Services or participation in Contests; and\n\n'
        ' ● you are not subject to backup withholding tax because: (a) you are exempt from backup withholding,'
        ' (b) you have not been notified by the Nigerian Tax Service that you are subject to backup'
      ' withholding as a result of a failure to report all interest or dividends, or (c) the Nigerian Tax Service has notified you'
      ' that you are no longer subject to backup withholding. You further agree and warrant that you will'
      ' immediately notify PickLord prior to any payments if they become subject to backup withholding at'
      ' any time.\n\n'
        ' If PickLord, in its sole discretion, determines that you do not meet the eligibility requirements of this Section 6,'
      ' then you are not authorized to use the Service. PickLord may require you to provide proof of eligibility according'
      ' to this Section 6 prior to making an entry, receiving a prize or withdrawing funds. This includes by requiring an'
      ' affidavit of eligibility or other verification information.'
      ' If PickLord otherwise determines that you do not meet the eligibility requirements of this Section 6, in addition to'
     ' any rights that PickLord may have in law or equity, PickLord reserves the right to terminate your Account,'
      ' withhold or revoke the awarding of any prizes associated with your Account, limit your ability to withdraw funds or'
      ' to work with your bank and other financial institutions and partners to clawback funds you previously withdrew'
      ' from PickLord. PickLord also reserves the right to withhold revoked prizes to use in furtherance of its'
      ' compliance, fraud prevention or anti-money laundering efforts.'
      ' We also may conduct investigations for compliance with the Terms or Code of Conduct, including anti-fraud and/or'
      ' integrity checks on playing patterns and Deposits prior to processing a withdrawal, and we may request additional'
      ' information before permitting a withdrawal. As long as there are no pending investigations on your Account, you'
      ' may close your Account and withdraw your Deposits and/or winnings at any time and for any reason.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '7. Contests.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' After you create an Account, you will be able to visit the Site or App and view the Contests available for entry.'
                    ' While some Contests may be free to enter, other Contests require an entry fee. All entry fees are fixed, known, and'
                    ' posted in advance of you submitting an entry. It is your responsibility to know and understand the rules and required'
                    ' entry fees for any given Contest. Rules for Contests, which may be updated from time to time at PickLord’ sole'
                    ' discretion, may be found at the applicable link on the daily “Board” on the Site or App. If the Rules for a Contest'
                    ' conflict with these Terms, the Rules for the Contest will control to the extent of the conflict. If the Rules for a'
                ' Contest conflict with any general rules found in the Site and App Help Center (“Full Rules”), the Rules for the'
          ' Contest will control to the extent of the conflict.'
          ' Please note that you must meet all eligibility requirements and otherwise comply with any other applicable rules to'
            ' enter a Contest or be eligible to win a Prize. In particular, due to restrictions in certain states, territories, and/or'
            ' jurisdictions, residents of the Excluded Jurisdictions are not eligible to participate in our paid entry Contests. You'
          ' grant PickLord the right to withhold Prizes if PickLord suspects that you failed to satisfy all eligibility'
            ' requirements. If, following an investigation, PickLord determines that you are eligible to participate and receive'
            ' Prizes, then PickLord will furnish your prize. Additionally, if PickLord discovers that you do not meet eligibility'
          ' requirements after you have received your Prize and/or withdrawn from your Account the Prize funds, then'
          ' PickLord may, as it solely deems appropriate, seize funds from your Account or request that your bank freeze the'
          ' bank account to which the funds were deposited and return such funds to PickLord.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '7.1. Full Rules\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' In instances where there may be a direct conflict between these Terms and the Full Rules, the Full Rules control to'
                  ' the extent of the conflict. See Section 7 above for other interactions between the Full Rules and these Terms..\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '7.2. Entry Fee\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' Entry fees vary from Contest to Contest. When you choose to enter a Contest and complete the entry process, the'
                 ' requisite entry fee will be debited from your PickLord Account. All payments are final. No refunds will be issued.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '7.3. Conditions for Entry\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' To be eligible to enter any Contest or receive any prize, you may be required to provide PickLord with additional'
                    'documentation and/or information to verify your identity as the Account-holder, and to provide proof that all'
                'eligibility requirements are met. In the event of a dispute regarding the identity of the person submitting an entry, the'
                    'entry will be deemed submitted by the person named on the profile of the Account the entry was submitted, or if'
                    'possession of the Account itself is contested and, in PickLord’ sole opinion, sufficiently uncertain, the name in'
                'which the email address on file was registered with the email service provider. PickLord reserves the right not to'
                'award a Prize to an individual it believes in its sole discretion did not submit the winning entry.'
                'PickLord Employees shall be eligible to enter private, employee-only contests not open to the public, to the extent'
                'allowed by applicable law. These are not considered Contests under the Terms.'
                'By entering a Contest, you agree to be bound by the Terms, and the Contest rules and scoring as administered by'
                'PickLord, which shall be final and binding in all respects. If you engage in conduct or otherwise use any'
                'information PickLord deems to be improper, unfair or otherwise adverse to the operation of the Contest or is in any'
                'way detrimental to other entrants, PickLord at its sole discretion may disqualify you from a Contest, refuse to'
                'award benefits or Prizes, and/or require the return of any Prizes.\n\n'
                'Except as otherwise provided herein, the following individuals are prohibited from entering a Contest:\n\n'
                '● A PickLord employee (“Employee”) or any domestic partner or relative of the Employee who'
          'resides at an Employee’s residence, or otherwise in the same household as an Employee, including but'
              'not limited to parents, grandparents, in-laws, children, siblings, and spouses (an “Immediate Family'
              'Member”) if the Contest is public or requires an entry fee;\n\n'
            '● An employee or operator of any daily fantasy sports contest platform including any that charges'
        'entrance fees or offers prizes, and any Immediate Family Member of any such person;\n\n'
        '● An individual who has had access to any pre-release, confidential information or other information'
        'that is not available to all other entrants of a Contest and that provides the entrant an advantage in'
            'such a Contest, including any information from another daily fantasy sports contest platform, or'
            'information from a sports governing body, team, league, player, official, union representative, or'
            'agent (“Insider Data”);\n\n'
        '● An employee of a sponsor, consultant, or supplier of PickLord or any other daily fantasy sports'
      'contest platform that has access to Insider Data or otherwise receives an advantage in the entrant’s'
      'participation in a Contest;\n\n'
        '● An employee, operator or consultant to a sports governing body, league, or team where such'
        'employee, operator or consultant is prohibited from participating in Contests by the governing body;\n\n'
        '● A professional or collegiate athlete, sports agent, coach, team owner, team employee, referee or'
        'league official or employee, or an Immediate Family Member of a professional or amateur athlete,'
        'sports agent, coach, team owner, team employee, referee or league official or employee;\n\n'
      '● A person prohibited from participating pursuant to court order, or any state-sponsored exclusion or'
      'self-exclusion list; or \n\n'
        '● A person deemed ineligible, at the sole discretion of PickLord, because of violations of the Terms or'
      'Code of Conduct.'
      'Users further acknowledge that the forfeiture and/or return of any Prize shall not restrict PickLord from pursuing'
      'criminal or civil proceedings in connection with such conduct.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '7.4. Contest of Skill – Paid Entry Contests\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' Contests offered through the Services are Contests of skill. Each of our Contests are governed by specific rules, as'
                  ' may be modified from time to time, which are set forth in the Contest official rules and are incorporated into these'
                ' Terms by reference. Winners are determined by the objective criteria described in the Contest rules and other'
                  ' documentation associated with the Contest. Contest winners are determined by the individuals who use their skill'
                ' and knowledge of relevant sports information and fantasy sports rules to achieve a winning result according to the'
                ' scoring rules for that Contest. The Services may not be used for any form of gambling, sports betting, or other game'
                ' of chance.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '7.5. Contest Results\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' Prizes will only be awarded if a Contest is completed. We reserve the right to cancel Contests at any time. In the'
                    ' event of a cancellation, all entry fees will be refunded to the entrants except as specifically provided in these Terms.'
                    ' After each Contest ends, the winners are announced (generally by the following day) but remain subject to final'
          ' verification.'
          ' Once winners are notified and prizes are awarded, the scoring results will not be changed regardless of any official'
          ' adjustments made by the professional leagues, though we reserve the right to make adjustments based on errors or'
            ' irregularities in the transmission of information to us from our stats provider or in our calculation of results.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '7.6. Prizes\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' Prizes and awards offered for each Contest (“Prize”, “Prizes”) will be established, published, and made available to'
                    ' Users with the creation of a new Contest (“Contest Prize Table”). Contest Prize Tables are published prior to'
          ' PickLord opening the Contest to User entries.'
          ' PickLord will make all reasonable efforts to ensure that all Prizes are awarded and deposited within forty-eight (48)'
            ' hours following the conclusion of each Contest.'
            ' PickLord may, in its sole and absolute discretion, require the User to execute a separate release of claims as a'
        ' condition of being awarded any prize, receiving any payout, or continuing to use the PickLord platform. winnings'
        ' to your Account remain our property and willNo substitution or transfer of Prizes is permitted except at our sole discretion.'
        ' All Prizes are awarded as is and without warranty of any kind, express or implied, (including, without limitation, the implied'
       ' warranty of merchantability or fitness for a particular purpose) by us. If a legal authority challenges the award and/or your'
        ' receipt of a Prize, PickLord reserves the right in its sole discretion to revoke, cancel, suspend, substitute, or modify'
        ' the award of such Prize. In all disputes arising out of the determination of the winner of its Contests, PickLord is'
      ' the sole and final authority as to all determinations and adjudications of the results and/or winners of a Contest, and'
        ' its actions are final and binding.'
      ' You acknowledge and agree that should we, in our sole and absolute discretion, determine that you did not comply'
      ' with and or adhere to the Terms or Code of Conduct, in any way, we may disqualify you from any Contest entered,'
      ' in which case any prizes awarded to you as a result of said Contest will be immediately forfeited. You agree to'
      ' cooperate with our efforts to reverse payments.'
      ' All monetary winnings will be deposited directly into your Account. Any amounts that are mistakenly credited as'
      ' automatically be transferred from your Account upon'
      ' confirmation of the error. Any amounts mistakenly credited to your Account that have been withdrawn by you'
        ' before confirmation of the error will constitute a debt owed by you. You grant PickLord the right to request that'
      ' your bank freeze, seize and/or reverse any funds that were derived from amounts awarded in error by PickLord.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '7.7. Contest Statistics, Live Scoring and Third-Party Information Providers\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' To the extent that PickLord offers “live” statistics before or during gameplay and/or Contest entry, all “live”'
                      ' statistics, scoring and other information provided through PickLord and related information sources are unofficial.'
                      ' Further, during certain Contests, PickLord may be reliant on third-party operators to provide “live scoring” of'
                      ' certain sporting events and matches. At times, you may not be able to see or access the most up-to-date information'
                      ' or “live scoring” for the relevant sporting event or match. Regardless of the reason for the delay in information,'
                      ' PickLord shall not be liable for any such delay in provision of information or “live scoring.”'
                      ' PickLord may also offer historical statistics during a User’s selection of a Contest roster. PickLord is reliant upon'
                      ' third-party operators for this historical information. Offerings of historical statistics may contain errors or omissions'
                      ' due to any of a number of factors out of PickLord’ control, and we encourage Users to do their own research before'
                      ' assembling a roster to enter into a Contest. Regardless of the reason for errors or omissions in historical statistics,'
                      ' PickLord shall not be liable for a User’s reliance on historical statistics.'
                      ' “Live scoring,” information, statistics and their respective components are offered for informational and/or'
                      ' entertainment purposes only and are not used to determine the results of Contests. Neither PickLord nor its'
                      ' third-party providers warrant or make any representations of any kind with respect to the information provided'
                      ' through the App and/or Site and related information sources. PickLord and its third-party providers shall not be'
                      ' responsible or liable for the accuracy, usefulness, or availability of any information transmitted or made available via'
                      ' the Site and related information sources, shall not be responsible or liable for any error or omissions in that'
                      ' information, nor shall PickLord be responsible for any errors or losses you suffer or any other issues that result'
                      ' therefrom.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '7.8. Stat Corrections\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' PickLord takes every effort to ensure that accurate, up-to-date scoring is applied across all Contests. However,'
                    ' PickLord does not guarantee the accuracy of any scoring or stat corrections. Official scores and results will be'
                ' posted at the conclusion of the sporting event or competition once it has been declared official and all official box'
                ' scores and statistics are posted. Stat corrections posted by either PickLord’ third-party data provider or the official'
                ' league statistic provider more than thirty (30) minutes following the official conclusion of the sporting event or'
          ' competition will not be retroactively applied to entries and not be taken into consideration for determining how to'
          ' score the Contest.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '8. Contest Disqualification and Cancellation.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' Once your entry is submitted you may only cancel: (i) within five (5) minutes of submission; (ii) if no athletes within'
                    ' your entry have started play or if the only athletes whose games have started play have been marked Do Not Play'
                    ' (DNP); (iii) if your entry is #500.00 or greater; and (iv) if the entry is a full game entry (i.e. not a second half or first'
      ' inning entry), there is a fee assessed on cancellation.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '8.1. No Refund\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' All paid entry fees are final. No refunds will be issued. In the event of a dispute regarding the identity of the person'
                  ' submitting an entry, the entry will be deemed submitted by the person in whose name the Account was registered.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '8.2. Disqualification and Cancellation by PickLord\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' Users may participate in Contests only as specified in the Terms and Code of Conduct. Failure to comply with these'
                    ' Terms or the Code of Conduct will result in disqualification and, if applicable, Prize forfeiture or seizure.'
                ' PickLord, in its sole discretion, may disqualify you from a Contest or the entire Service, refuse to award Prizes,'
                ' require the return of any Prizes, or suspend, limit, deactivate or terminate your Account if you engage in conduct'
                ' PickLord deems, in its sole discretion, to be improper, unfair, fraudulent, in violation of the Terms or Code of'
                ' Conduct or is otherwise adverse to the operation of the Service or in any way detrimental to other users. Improper'
                ' conduct includes, but is not limited to: falsifying personal information, including payment information, required to'
                ' use the Service or claim a Prize; violating eligible payment method terms, including the terms of any cash rewards'
                ' payment card; accumulating points, Contest wins or Prizes through unauthorized methods such as unauthorized'
                ' scripts or other automated means; tampering with the administration of the Service or trying to in any way tamper'
                ' with the computer programs associated with the Service; obtaining other entrants’ information and spamming other'
                ' entrants; abusing the Service in any way; or otherwise violating these Terms. You acknowledge that the forfeiture'
                    ' and/or return of any Prize shall in no way prevent PickLord from informing the relevant authorities, and/or'
                ' pursuing criminal or civil proceedings in connection with such conduct.'
                ' We reserve the right, in our sole discretion, to cancel or suspend any Contest (or any portion thereof) for any reason'
              ' whatsoever, including but not limited to, the safeguarding of the administration, security, fairness, integrity or proper'
          ' operation of the Contest (or any portion thereof), including without limitation when a Contest Prize Table has been'
        ' tampered with. We may provide you with notification of such cancellations or suspensions but will not be obliged to'
        ' do so. In the event that a Contest is canceled altogether, no Contest entry fee will be payable by you and any'
        ' amounts that were to be used for the purpose of entering the Contest will once again be made available to you via'
        ' your Account.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '9. Deposits and Withdrawals.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '9.1. Deposits\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' To participate in a Contest, you will be required to Deposit by any of the methods permitted on the Services. Such'
                    ' funds will be deposited into your Account upon actual receipt of the funds by PickLord. Minimum and maximum'
                ' limits may be applied to Deposits, depending upon your history with the Services; the method of deposit; state,'
                    ' territory, and/or jurisdiction-imposed deposit limits; any self-imposed deposit limits you set; and other factors as'
                ' determined solely by PickLord. We are not a bank and funds are not insured by any governmental agency. No'
                ' interest is payable on amounts on deposit in your Account. All payments into your Account must be from a payment'
                    ' source on which you are the named Account holder. It shall be a violation of these Terms for you to submit payment'
                ' using any payment method for which you are not the named account holder. In addition, to be eligible to Deposit'
                    ' and play Contests, you must not be subject to backup withholding tax from the Nigerian Tax Service or other government authority.'
                ' By Depositing or entering paid Contests, you agree to provide us with a valid full name, mailing address, date of'
                    ' birth, and any other information we may require in order to run appropriate identity checks and comply with'
                ' applicable rules and regulations. If necessary, you may be required to provide appropriate documentation that allows'
                ' us to verify you. While your Account is pending verification, you may be able to Deposit and participate in'
                    ' Contests, but you will not be able to withdraw any funds from your Account until verification is complete. If we are'
                ' unable to verify you, we reserve the right to suspend your Account and withhold any funds until such time as we'
                ' have been able to successfully verify you.'
                ' We also may conduct checks for Terms compliance, including anti-fraud checks on playing patterns and Deposits'
                ' prior to processing a withdrawal, and we may request additional information before permitting a withdrawal. If'
                    ' PickLord requests that a User completes and executes such an affidavit and the User fails to do so within ten (10)'
            ' days, or PickLord otherwise determines that the User does not meet the eligibility requirements or is not in'
            ' compliance with these Terms, PickLord reserves the right to terminate the entrant’s Account and withhold or'
          ' revoke the awarding of any prizes associated with such Account. In such a situation, PickLord may pay out any'
                  ' withheld or revoked prizes to the other entrants in the relevant Contest in a manner consistent with the rules of the'
          ' Contest.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '9.2. Charge Backs\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' If any Deposit is charged back, any winnings generated from Contests shall be invalidated, forfeited and deducted'
                  ' from your Account balance or seized from any bank account into which you have deposited the Prizes. In addition,'
                  ' the amount of the initial Deposit will be invalidated, forfeited and deducted from the Account balance. In the event'
                ' that, following such deductions, your Account balance is in a negative balance, you expressly acknowledge and'
                ' agree that such negative balance shall constitute an un-contestable debt payable by you to us, due and payable'
                ' immediately. PickLord reserves the right to close your Account without notice should a Deposit be charged back.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '9.3. Credit Card Removal\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' As a User, you will have two months from the date you create your Account to provide a preferred method of'
                    ' Deposit. You may request that a previously provided method of payment is removed from your Account no more'
                ' than once (1) in any calendar month, and no more than five (5) times over any twelve-month span. Additionally,'
          ' PickLord may remove any method of Deposit at any time at PickLord’sole discretion and determination.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '9.4. Account for Deposited Funds \n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' When you Deposit or earn winnings, your Deposits and winnings after Contests are completed and held in a'
                    ' separate, segregated bank account (the “Segregated Account”) held by a third party for the benefit of the User.'
          ' These funds are not commingled with any other funds, including, but not limited to, the funds of the Company, and'
              ' the Company has in place policies and procedures to ensure that Segregated Account funds remain segregated.'
              ' Vendors, players, and creditors shall be aware that the funds in the Segregated Account do not belong to the'
          ' Company or any associated Company subsidiary or trustee, although the Company is entitled to income accruing on'
          ' the Segregated Account. Further, funds held in the Segregated Account are not available to creditors of the'
          ' Company. The funds in the Segregated Account belong to you and other Users, subject to review for verification or'
          ' evidence of fraud or other prohibited conduct as described above, and PickLord may not use them to cover its'
          ' operating expenses or for other purposes. You will not receive interest or other income on the Segregated Account.'
          ' Players who believe that funds held by or their accounts with PickLord have been mis-allocated, compromised or'
              ' otherwise mishandled, may register a complaint with PickLord online by emailing Support@PickLord.com.'
          ' PickLord shall use its best efforts to respond to such complaints within ten (10) days. If PickLord determines that'
        ' the relief requested in the complaint will not be granted, its response will set forth the specific reasons therefore. If'
        ' more information is required for the Company to process the complaint, the response will note the form and nature'
        ' of the additional information needed.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '9.5. Bonuses and Promotions \n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' From time to time, PickLord may provide you with promotional discounts or bonuses, for example, as an incentive'
                    ' to use the Services, to establish an Account, or to refer others to sign up with PickLord. Such promotional'
                    ' programs may be governed by their own terms and conditions which will be presented at the time of such'
                ' promotions. Unless otherwise provided, promotional discounts are non-transferable.'
                ' Any bonuses or promotions that you do not apply to a Contest (i.e., use) within ninety (90) days of receipt of the'
        ' bonuses or promotions shall automatically terminate and become null and void, at PickLord’ sole, unlimited'
            ' discretion. Any existing bonuses or promotions you received prior to the Effective Date of these Terms shall remain'
        ' valid for an additional sixty (60) days from the Effective Date before such bonuses and promotions shall'
        ' automatically terminate and become null and void.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '9.6. Withdrawals \n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' You may request a withdrawal of funds from the available cash balance in your Account at any time. You are the'
                    ' only person or entity authorized to withdraw funds from your Account. The minimum withdrawal is #1000.00 .'
                ' Account holders with pending Deposits must wait until those funds clear before requesting a withdrawal.'
                ' Withdrawals shall only be provided via a check payable to you, an ACH bank transfer to your account, or an OCT'
                ' transfer via an eligible credit card company’s push payment solution. Withdrawals that you make from your Account'
                ' and checks issued from such Account may bear the name of a Company subsidiary.'
               ' Users may withdraw their cash Prize awards as well as cash Deposits by using the “Withdrawal” option on the Site'
                ' or App. PickLord has safeguards in place to prevent unauthorized withdrawals from User Accounts. You may be'
                ' requested to complete an affidavit of eligibility and a liability/publicity release (unless prohibited by law),'
              ' Knowledge Base Authentication verification, and/or appropriate tax forms and forms of identification as reasonably'
          ' requested by PickLord in order to complete a withdrawal. If your identity and Account cannot be verified,'
' PickLord will not release the funds from your Account. We also may conduct checks for Terms and Code of'
' Conduct compliance, including anti-fraud checks on playing patterns and deposits prior to processing a withdrawal,'
' and we may request additional information either before permitting a withdrawal or at any point in time after a'
' withdrawal if PickLord unilaterally determines that any such withdrawal(s) potentially violated either these Terms'
' or any relevant federal, state, local, or international laws or regulations. Failure to comply with this requirement may'
' result in disqualification and forfeiture of any Prizes as well as all monies withdrawn via the Site or App in'
' perpetuity.'
' Processing of requested funds back may take up to five (5) business days, but PickLord reserves the right to freeze'
' your Account and/or delay a request for withdrawal of funds for a reasonable period of time pending completion of'
' any investigation of reported or suspected abuse based on a good faith belief of fraudulent conduct or conduct that'
' would cause the Company to violate applicable law. In the event of such investigation, PickLord shall notify you of'
' the nature of the investigation. Further, processing of funds may take up to ten (10) business days if PickLord, in its'
' sole and unlimited discretion, determines that you must submit tax reporting paperwork related to the requested'
' withdrawal. If you do not receive your withdrawal within five (5) business days, please contact customer support.'
' If your Account is closed by us for a violation of the Terms, we reserve the right to determine, in our sole'
' determination, whether to declare as void any transaction placed by you. If a Prize has been awarded on a closed'
' account due to fraud, PickLord may withhold the Prize, provided that the Prize is then awarded to another'
' participant in the Contest who would have won the Prize had that User not participated. Further, if you have already'
' withdrawn funds, whether Prizes or otherwise (e.g. other monies not won via Contests), that were, in the sole'
' determination of PickLord, the result of a violation of these Terms and/or federal, state, local, or international law'
' or regulation, then you grant PickLord the right to debit the bank account to which these funds were deposited'
' without reservation and until PickLord recoups, in whole, any and all monies that you improperly withdrew. In'
' such an event, we will first use your Account funds to defray the costs of administration and enforcement of the'
' Terms. You shall, at all times, maintain an account at a bank that is a member of the Federal Reserve ACH System (the'
' “Bank Account”). You expressly authorize us to debit and/or credit the Bank Account according to these Terms.'
' You further authorize us, as well as our third-party payment processors and all related banks, to process electronic'
' funds transfers through the Bank Account you designate. You represent and warrant that you shall, at all times,'
' maintain a sufficient balance in your Bank Account to cover all obligations owed to us pursuant to these Terms and'
' further expressly waive all rights to dispute any attachment or other debt collection efforts undertaken by us and/or'
' our assigns, agents, and partners in instances where you do not maintain a sufficient balance in your Bank Account'
' to cover all obligations owed to us. Further, you expressly agree that we, and/or our third-party payment processors'
' and related banks, may debit any such Bank Account held by, or on, your behalf, in order to satisfy any of your'
' obligations to us that arise out of or in any way relate to these Terms, the Site, App, or your use of PickLord'
' Services, including, without limitation, Deposits and Withdrawals. This authorization shall survive the termination'
' of these Terms and shall continue in perpetuity until all of your obligations to us are paid in full, including, but not'
' limited to, the obligations described in these Terms. If you wish to revoke your authorization for us to debit the Bank'
' Account, you must submit that request, in writing, in the manner required for providing notice to PickLord as set'
' forth in the Terms, at least twenty-four (24) hours prior to the origination of any entry or transaction permitted by the'
' Terms. You may not submit any such notice revoking authorization for us to debit the Bank Account at any point in'
' time after originating the withdrawal.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '9.7. Account Inactivity Fee \n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' To the extent allowed by law, if you, via your Account, have not entered a Contest, made a Deposit or a Withdrawal,'
                    ' or submitted a support ticket (“Account Activities”) for eighteen (18) consecutive months, your Account will be'
            ' deemed inactive (“Inactive Account”). Unless prohibited by applicable law, PickLord will charge a fee of #50.00'
      ' per month on all Inactive Accounts (“Account Inactivity Fee”) until the sooner of: (i) the Account is reactivated by'
    ' one of the Account Activities; or (ii) the Account has a #0.00 balance. PickLord will provide all Users subject to an'
    ' Account Inactivity Fee with at least thirty (30) days’ notice prior to the first deduction of fees.'
    ' To the extent allowed by law, we reserve the right to transfer the account funds to an account payable and to suspend'
    ' any further account statements. If we have had no other sufficient contact with you regarding an Inactive Account'
    ' within the period specified by state law, the account will be presumed to be abandoned (“Abandoned Account”).'
    ' Funds in Abandoned Accounts will be reported and remitted in accordance with state law. Once funds have been'
    ' turned over to the state, we have no further liability to you for such funds and if you choose to reclaim such funds,'
    ' you must comply with applicable laws governing the same.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '9.8. Nigerian Naira \n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' All Deposits and withdrawals will be denominated in naira unless otherwise expressly stated. If you make a'
                    ' Deposit that is denominated in a currency other than naira, please be aware that the funds will be converted'
                ' into Nigerian Naira by our Payment Processors (defined below) or your financial institution and you may be charged a'
          ' service fee for such conversion. Please also be aware that our Payment Processors and/or your financial institution'
          ' may use different conversion rates for deposit, withdrawal, and refund transactions. The conversion rate used is not'
          ' under our control and we recommend that you contact your financial institution directly for more information.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '9.9. Taxation \n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' All taxes associated with the receipt of any Prize are the sole responsibility of the winner. In the event that the'
                    ' awarding of Prizes to winners of Contests is challenged by any legal authority, PickLord reserves the right in its'
                ' sole discretion to determine whether or not to award such Prizes.'
                ' Each year all winners who have won #10,000 or more during the previous year must provide updated address and social'
                ' security details to PickLord. These details will be used to allow PickLord to comply with tax regulations and may'
                ' be shared with appropriate tax and/or law enforcement authorities at PickLord’ sole discretion. In accordance with'
                    ' PickLord’ policy, and in compliance with Nigeria\'s Internal Revenue Service regulations, PickLord may be'
                ' required to submit a tax with the Nigerian Tax Service'
                ' or other appropriate form to any person who wins (winnings less entry fees) in excess of #10,000 on the Site in a'
          ' given year. Depending on the jurisdiction in which you reside, PickLord may require you to complete a tax Form,'
              ' Request for Taxpayer Identification Number (NIN) and Certification and/or additional tax forms. This information'
            ' will be used to file the a Form with the Nigerian Tax Service. PickLord reserves the right to suspend all account activity,'
            ' including any payments and/or withdrawals, until a complete and valid Nigerian Tax Service Form is provided. PickLord'
        ' reserves the right to withhold (from your existing Account balance and/or from future net winnings) any amount'
      ' required to be withheld by law. You remain solely responsible for filing and paying all federal, state, and other taxes'
      ' in accordance with the laws that apply in your state, territory, jurisdiction, province, and/or country of residence.'
        ' Further, it is your sole responsibility to provide PickLord, upon request, with all personal information necessary to'
      ' submit a tax Form. If you fail to provide all requested information and therefore prevent PickLord from'
      ' filing all pertinent tax forms, then you bear all responsibility, and you indemnify,'
      ' and hold harmless PickLord from any resulting liability, lawsuit, judgment, or any other action stemming from this'
      ' failure. PickLord does not provide tax advice, nor should any statements in these Terms or on the Service be'
      ' construed as tax advice. \n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '9.10. Third-Party Payment Processor\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' PickLord uses third-party electronic payment processors and financial institutions (“Payment Processor(s)”) to'
                  'process Deposits and/or payments for services or products offered via the Services. The information that we provide'
                'to and receive from these Payment Processors and the manner in which such information is used and disclosed is'
                'described in further detail in the Privacy Policy. You irrevocably authorize us, as necessary, to instruct such Payment'
                'Processors to handle payments and you irrevocably agree that PickLord may give such instructions on your behalf'
                'in accordance with your requests as submitted through the Services. You agree to be bound by the terms and'
                'conditions of each applicable Payment Processor, and in the event of a conflict between these Terms and the'
                'Payment Processors\' terms and conditions, then these Terms shall prevail. You further agree that PickLord is not'
                'liable for any loss caused by any unauthorized use of your credit card or other method of payment by a third party in'
                'connection with your use of the Services, except as a result of the recklessness or wanton disregard of PickLord or'
                'its employees.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '10. Indemnification.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' You agree to indemnify, defend and hold harmless PickLord, its parents, subsidiaries, affiliates, and agents, as well'
                  ' as the officers, directors, employees, shareholders, and representatives of the foregoing entities, from and against'
                    ' any and all losses, damages, liability, claims, settlements, injury to all persons and property, and costs and expenses'
                    ' (including without limitation, reasonable attorneys’ fees and expenses) as incurred, resulting from, arising out of, or'
              ' related to, your participation in a contest, your use of the Services, Site, App, or content, our use of information that'
              ' you submit to us, any misrepresentations made by you, your breach or violation of the Terms, your infringement of'
          ' any intellectual property or other right of any other person or entity, the receipt, ownership, use or misuse of any'
              ' prize, and any claims, judgments, prosecutions, regulatory or administrative actions taken by a local, state, or federal'
              ' government as a result of your use of PickLord and its platforms to violate a local, state, or federal law or'
          ' regulation.'
          ' PickLord or an affiliate will provide you with prompt written notice of a filed claim and permit you to control the'
              ' defense, settlement, adjustment, or compromise of the claim, but PickLord may, at its sole discretion, elect to solely'
              ' control the defense, settlement, adjustment, or compromise of the claim, in which event: (A) you agree to cooperate'
        ' with PickLord’ sole control and provide any assistance that may be reasonably necessary, and (B) you shall not be'
        ' relieved of your indemnification and hold harmless obligations under this Section 10.'
        ' PickLord may employ counsel at its own expense to assist it with respect to the claim, but if such counsel is'
        ' necessary because of a conflict of interest of either you or your counsel, or because you do not assume control of the'
          ' claim, you will bear the expense of such PickLord-employed counsel. PickLord shall have no authority to settle a'
       ' claim on your behalf.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '11. Marketing Cooperation.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' By participating in any Contest or PickLord promotion in which you win a Prize, or which takes the form of a'
                    ' Contest, in which you successfully progress to a second or subsequent round, you agree to cooperate in all'
                ' advertising, marketing and publicity material and activities we may, at our expense, produce or arrange. You also'
                ' agree, if requested: (a) to wear any branded clothing or attire we may provide; and (b) to sign, if requested, an'
        ' irrevocable release form allowing us, without any compensation being payable, to use your name, photograph,'
        ' likeness, details of the country and/or city where you live, any comments made by or attributed to you, and to'
        ' incorporate any such information and any audio/visual recording or broadcast for such promotional purposes, in any'
         ' media, throughout the world.'
        ' Where you participate in any event which we host or arrange in connection with a Contest or promotion, you agree'
        ' not to make use of any third-party branding or advertising for any organization which we consider to be our'
        ' competitor, including without limitation any branding or advertising for any other gaming company, and you agree'
        ' not to conduct yourself in a manner that might, in our reasonable opinion, bring us, any of our affiliates or any of our'
        ' or their respective brands into disrepute. In the event of any breach of this requirement, we reserve the right not to'
        ' award a Prize or to request the return of any Prize awarded.'
        ' With respect to any submission or entry you make in the course of participating in any Contest or PickLord'
        ' promotion, you declare that the relevant material will be all your own original work and will not infringe on the'
        ' intellectual property rights or other rights of any person. You agree to assign all rights (including intellectual'
            ' property rights) for such material, and if moral rights exist, you agree to waive such rights. Moral rights are the'
      ' rights to claim authorship of the work and to object to any distortion, modification of, or other derogatory action in'
        ' relation to said work, that would be prejudicial to the author’s honor or reputation. You agree to execute all'
      ' documents and to do any other things reasonably necessary to assure our title to such material, and to allow us to'
      ' fully use and exploit such material.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '12. Availability of the Services.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' You acknowledge that there may be interruptions in service or events that are beyond our control. While we use'
                  ' reasonable efforts to keep the Services accessible, the Services may be unavailable from time to time for any reason'
                  ' including, without limitation, system down time for routine maintenance. You further understand that there may be'
                ' interruptions in service or events on third-party sites that may affect your use of the Services and that are beyond our'
                ' control to prevent or correct. Interruptions in the Services that are beyond our control shall not serve as a basis to'
                ' demand a full or partial refund of any prepaid fees.'
                ' PickLord may limit access, via technological means, to the Services in the Excluded Jurisdictions. If you attempt to'
                  ' Deposit or play in any Contest while located in an Excluded Jurisdiction, you may be in violation of the law of such'
                ' Excluded Jurisdiction and these Terms, and subject to having your Account suspended or terminated, all Deposits'
                  ' made while in an Excluded Jurisdiction may be returned to you, all entries made, whether completed or in progress,'
                  ' may be voided and refunded, and all Prizes won may be refunded, voided and returned to PickLord. You hereby'
                ' agree that we cannot be held liable if laws applicable to you restrict or prohibit your participation. We make no'
                ' representations or warranties, implicit or explicit, as to your legal right to participate in any service offered nor shall'
                  ' any person affiliated, or claiming affiliation, with us have authority to make any such representations or warranties.'
                ' We do not intend that the Site or App and the Services to be used by persons are present in jurisdictions in which'
                ' the playing of fantasy sports contests may be prohibited or restricted.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '13. Use of Personally Identifiable Information.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' You acknowledge that when you download, install, or use the App, Site or access the Services through another'
                    ' device, PickLord may use automatic means (including, for example, cookies and web beacons) to collect'
          ' information about your devices and about your use of the Services. You also may be required to provide personally'
          ' identifiable information about yourself as a condition of downloading, installing, or using the Services. All'
          ' information we collect through or in connection with the Services is subject to the Privacy Policy, which is expressly'
            ' incorporated herein, located at https://www.PickLord.com/privacy-policy.'
          ' You further acknowledge that by providing your cell phone number to PickLord you consent to receive'
          ' non-marketing and informational text messages from time to time. Consent is not a condition of service.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '14. Carrier Fees.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' Use of the Services may involve transmission of data through your carrier or service provider\'s network. You are'
                  ' responsible for all carrier, text/SMS, data, or other related fees or charges you incur from your carrier or service'
                ' provider in connection with or related to your use of the Services. PickLord assumes no liability or responsibility'
                  ' for the payment of any charges you may incur.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '15. Updates for the App.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' PickLord may from time to time and in its sole discretion develop and provide App updates, which may include'
                      ' upgrades, bug fixes, patches, other error corrections, and/or new features (collectively, including related'
                      ' documentation, “Updates”). Updates may also modify or delete certain features and functionality. You agree that'
                      ' PickLord has no obligation to provide Updates or to continue to provide or enable any particular features or'
                      ' functionality. Based on your Device settings when your Device is connected to the internet either:'
                      ' (a) the App will automatically download and install all available Updates; or'
                      ' (b) you may receive notice of or be prompted to download and install available Updates.'
                      ' You shall promptly download and install all Updates and acknowledge and agree that the App or portions thereof'
                      '  not properly operate should you fail to do so. You further agree that all Updates will be deemed part of the App'
                      ' and be subject to all of the Terms.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '16. Rules and Prohibited Conduct.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' As a condition of use, you agree not to use the Services for any purpose that is prohibited by the Terms, Code of'
                    ' Conduct, or federal, state, local, or international laws or regulations. The Services are provided only for your own'
                   ' personal, non-commercial use. You are responsible for all of your activity in connection with the Services.'
                ' You understand and agree that you will not use the Services to engage in the prohibited conduct below:'
                    ' (a) copy the Services, except as expressly permitted by the license provided in Section 16 of the Terms;\n\n'
              ' (b) sell, share, co-own, or otherwise transfer your Account;\n\n'
            ' (c) modify, translate, adapt, or otherwise create derivative works or improvements, whether or not'
          ' patentable, of the Services;\n\n'
          ' (d) reverse engineer, disassemble, decompile, decode, or otherwise attempt to derive or gain access to'
    ' the source code of the Site or App or any part thereof;\n\n'
        ' (e) remove, delete, alter, or obscure any trademarks or any copyright, trademark, patent, or other'
    ' intellectual property or proprietary rights notices from the Site or App, including any copy thereof;\n\n'
    ' (f) rent, lease, lend, sell, sublicense, assign, distribute, publish, transfer, or otherwise make available'
    ' the Site or App, or any features or functionality of the Site or App, to any third party for any reason;\n\n'
    ' (g) remove, disable, circumvent, or otherwise create or implement any workaround to any copy'
    ' protection, rights management, or security features in or protecting the Site or App;\n\n'
    ' (h) use your Account to impersonate another natural person, or misrepresent your identity or affiliation'
    ' with any person or organization;\n\n'
    ' (i) use the App in any way that violates any applicable federal, state, local, or international law or'
    ' regulation (including, without limitation, any laws regarding the export of data or software to and'
    ' from the US or other countries);\n\n'
    ' (j) engage in any other conduct that restricts or inhibits anyone’s use or enjoyment of the Site or App,'
    ' or which, as determined by PickLord, may harm PickLord or users of the Site or App or expose'
    ' them to liability;\n\n'
    ' (k) use the Site or App in a manner that could disable, overburden, damage, or impair the Site or App,'
    ' or interfere with another party’s use of the Site or App, including their ability to engage in real time'
    ' activities\' through the Site or App;\n\n'
    ' (l) use any robot, spider, or other automatic device, process, or means to access the Site or App for any'
    ' purpose, including monitoring or copying any of the material on the Site or App;\n\n'
    ' (m) introduce any viruses, Trojan horses, worms, logic bombs, or other material that is malicious or'
    ' technologically harmful;\n\n'
    ' (n) attempt to gain unauthorized access to, interfere with, damage, or disrupt any parts of the Site or'
    ' App, the server on which any portion of the Site or App is stored, or any server, computer, or'
    ' database connected to the Site or App;\n\n'
    ' (o) attack the Site or App via a denial-of-service attack or a distributed denial-of-service attack; or\n\n'
    ' (p) otherwise attempt to interfere with the proper working of the Site or App.\n\n'
    ' If for any reason, PickLord determines that you have failed to follow the rules in this Section, we reserve the right'
    ' to prohibit any and all current or future use of the Services (or any portion thereof) by you. If we have reason to'
    ' suspect, or learn that anyone is violating these Terms, we may investigate and/or take legal action as necessary'
    ' including bringing a lawsuit for damages caused by the violation. We reserve the right to investigate and take'
    ' appropriate legal action, including without limitation, cooperating with and assisting law enforcement or'
    ' government agencies in any resulting investigations of illegal conduct.'
    ' An attempt by a User or other individual to deliberately damage the Site or App or undermine the legitimate'
    ' operation of a Contest is a violation of criminal and/or civil laws. Should such an attempt be made, PickLord'
    ' reserves the right to seek damages and other remedies from any such person to the full extent permitted by law.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '17. Term and Termination.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' These Terms and the Code of Conduct are in effect from the Effective Date and terminate when replaced by new'
                    ' versions, on the effective date of those new versions. You, as a User, are subject to whatever version is in effect at'
                ' any given time, subject to other provisions of the Terms.'
                ' PickLord may terminate the Terms and Code of Conduct at any time without notice. The Terms and Code of'
                ' Conduct shall be terminated immediately if PickLord ceases to support the Services, which PickLord may do in'
                ' its sole discretion. Such termination will not limit any of PickLord’ rights or remedies at law or in equity.'
                ' You may cancel your Account at any time through your Account settings or by sending us an email at the contact'
                ' information at the bottom of the page. Subject to other provisions of these Terms, you are not entitled to any refunds.'
                ' PickLord may suspend or cancel your Account without notice or refund to you if you violate these Terms. If your'
                ' Account is canceled, PickLord reserves the right to remove your Account information along with any Account'
                ' settings from our servers with no liability or notice to you. Once your Account information and Account settings are'
                    ' removed, you will not be able to recover this data and you may lose access to all of your Content (except that'
                    ' Content stored/published to third-party websites will remain on said third-party websites pursuant to those website’s'
                    ' terms and conditions).'
                ' Following termination of your Account, your license to use PickLord’ Content automatically terminates, and'
              ' PickLord has no obligation to provide you with use of the Services. All provisions of these Terms that by their'
              ' nature should survive termination shall survive termination, including, without limitation, ownership provisions,'
              ' warranty disclaimers, indemnity, and limitations of liability. You acknowledge and understand that our rights'
              ' regarding any User Content (as further defined below) before termination shall survive termination.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '18. Advertisements and Third-Party Sites.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' The Services may contain third party advertisements and/or sponsorships. The advertisers and sponsors that provide'
                  ' these advertisements or sponsorships are solely responsible for ensuring that the materials submitted for inclusion on'
                ' the Services are accurate and that they comply with all applicable laws. We are not responsible for the acts or'
                ' omissions of any sponsor or advertiser.'
                  ' Additionally, the Services may permit you to link to other websites or resources on the internet. Links on the'
                ' Services to third party websites, if any, are provided only as a convenience to you. If you use these links, you will'
                ' leave the Services. The inclusion or integration of third-party services or links does not imply control of,'
                ' endorsement by, or affiliation with PickLord. Your dealings with third parties are solely between you and the third'
                ' parties. You agree that PickLord will not be responsible or liable for any content, goods or services provided on or'
                ' through these outside websites or for your use or inability to use such websites.'
                ' Without limiting the foregoing, your correspondence or business dealings with, participation in promotions of or'
                ' purchases from, third parties found on or through the use of the Services, including payment for and delivery of'
                ' related goods or services, and any other terms, conditions, warranties or representations associated with such'
                ' dealings, are solely between you and the third party. You agree that PickLord shall not be responsible or liable for'
                ' any loss or damage of any sort incurred as the result of any such dealings or as the result of the presence of such'
                ' advertisers on the Services.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '19. Responsible Gaming\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' The Company reserves the right, in its sole discretion, to decide if you are interacting with the platform in a'
                    ' responsible way in accordance with Company policies and procedures. The Company also permits all Users to set'
                ' responsible gaming limits and to self-exclude. Notwithstanding the foregoing, Company reserves the right, in its'
                ' sole discretion, to impose stricter responsible gaming limits than those imposed by law or the User and exclude such'
                ' Users as necessary to best promote our responsible gaming policies.'
                ' Any attempt by you, whether or not successful, to evade or assist others in evading responsible gaming controls,'
                ' whether self-imposed or otherwise, and including self-exclusion, shall be a violation of these Terms. You grant the'
                ' Company the sole and unfettered right to deactivate and/or report to any relevant authorities any Account(s) you'
              ' create, access, manage or operate in contravention of responsible gaming controls. Additionally, you grant the'
          ' Company an unlimited ability to take any of the following actions in relation to an Account created or used to evade,'
              ' or in violation of, responsible gaming controls: (i) void all entries made or Contests entered; (ii) seize and retain all'
          ' Deposits; (iii) seize and retain all winnings and Prizes; (iv) remove all promotional or bonus funds; or (v) reverse'
    ' and/or freeze any attempted or completed withdrawals including funds withdrawn to your bank account or other'
    ' financial institution. You also agree to fully indemnify and hold harmless the Company against any action at law,'
    ' equity or otherwise and any liabilities that are a direct or indirect result of your evasion of responsible gaming limits'
    ' and restrictions. Such indemnity shall include, but not be limited to, all damages or injuries you and/or your family'
    ' suffer as a direct or indirect result of your actions or in-actions as well as any investigations, administrative actions,'
    ' prosecutions or any other actions undertaken by any governmental or quasi-governmental authority as the direct or'
    ' indirect result of your actions as described in this Section 19. Nothing in this Section shall be interpreted to limit any'
    ' other remedies, indemnities, or other relief provided to the Company in these Terms.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '20. PickLord Intellectual Property and User Content.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '20.1.Intellectual Property Ownership.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' PickLord shall have the appropriate license to or shall own all right, title, and interest, including all related'
                    ' intellectual property rights, in and to the PickLord technology, i.e., the Services.'
                ' In order to avoid future disputes about intellectual property ownership, PickLord does not solicit Users to submit'
                ' ideas for products, product improvements, new technology, marketing slogans or campaigns, or other items related'
                ' to Services, the Site, the App, or any part of PickLord’ business. If you choose to send an unsolicited idea to'
                ' PickLord, you agree that PickLord shall own all right, title, and interest to the submitted idea. Your idea and its'
                ' contents will not be confidential or proprietary. PickLord may use or choose not to use the idea at its sole'
                ' discretion. No compensation will be provided to you for the idea. Actions taken under this Section are not sales and'
                ' do not convey to you any rights of ownership in or related to the Services, the PickLord technology, or the'
                ' intellectual property rights owned by PickLord.'
                ' The PickLord name, the PickLord logo, and the product names associated with the Services are trademarks of'
                ' PickLord or its licensors, and no right or license is granted to use them.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '20.2. User Content and Copyright Policy.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' The Services contains areas in which you may post or upload User-generated content, comments, video, photos,'
                    'messages, other materials or items (collectively, “User Content”). You are solely responsible for your use of any'
          'User Content you submit.'
              'By submitting any User Content, you agree that you will not upload, post or otherwise transmit any User Content'
              'that \n\n(a) violates or infringes in any way upon the rights of others, including any statements which may defame,'
            'harass, stalk or threaten others; \n\n(b) you know to be false, misleading or inaccurate; \n\n(c) contains blatant expressions'
        'of bigotry, racism, racially or ethnically offensive content, hate speech, abusiveness, vulgarity or profanity;\n\n (d)'
    'contains or advocates pornography or sexually explicit content, pedophilia, incest, bestiality, or other content that is'
    'otherwise obscene or lewd; \n\n(e) violates any law or advocates or provides instruction on dangerous, illegal, or'
    'predatory acts, or discusses illegal activities with the intent to commit them; \n\n(f) advocates violent behavior; \n\n(g)'
    'poses a reasonable threat to personal or public safety; \n\n(h) contains violent images of killing or physical abuse that'
    'appear to have been captured solely, or principally, for exploitative, prurient, or gratuitous purposes; \n\n(i) is protected'
    'by copyright, trademark, trade secret, right of publicity or other proprietary right without the express permission of'
    'the owner of such copyright, trademark, trade secret, right of publicity or other proprietary right; \n\n(j) contains any'
    'unsolicited or unauthorized advertising or promotional materials with respect to products or services, “junk mail”,'
    '“spam”, “chain letters”, “pyramid schemes”, or any other form of solicitation; or \n\n(l) uses the name or likeness of an'
    'identifiable natural person without such person’s consent.'
    'PickLord reserves the right to remove User Content for any reason at its sole discretion.'
    'Reporting Claims of Copyright Infringement. We take claims of copyright infringement seriously. We will respond'
    'to notices of alleged copyright infringement that comply with applicable law. If you believe any materials accessible'
    'on or from the Services infringe your copyright, you may request removal of those materials (or access to them)'
    'from the Services by submitting written notification to our copyright agent designated below. In accordance with the'
    'Online Copyright Infringement Liability Limitation Act of the Digital Millennium Copyright Act.'
    '(“DMCA”), the written notice (the “DMCA Notice”) must substantially include the following:\n\n'
    '(1) Your physical or electronic signature.\n\n'
    '(2) Identification of the copyrighted work you believe to have been infringed or, if the claim involves'
   'multiple works on the Services, a representative list of such works.\n\n'
    '(3) Adequate information by which we can contact you (including your name, postal address, telephone'
    'number, and, if available, email address).\n\n'
    '(4) Identification of the material you believe to be infringing in a sufficiently precise manner to allow us'
    'to locate that material.\n\n'
    '(5) A statement that you have a good faith belief that use of the copyrighted material is not authorized by'
    'the copyright owner, its agent, or the law.\n\n'
    '(6) A statement that the information in the written notice is accurate.\n\n'
    '(7) A statement, under penalty of perjury, that you are authorized to act on behalf of the copyright owner.'
    'If you fail to comply with all of the requirements of Section 512(c)(3) of the DMCA, your DMCA Notice may not'
    'be effective. Please be aware that if you knowingly materially misrepresent that material or activity on the Services'
    'is infringing your copyright, you may be held liable for damages (including costs and attorneys\' fees) under Section'
    '512(f) of the DMCA.\n\n'
    'Our designated copyright agent to receive DMCA Notices and Counter-Notices (as further defined below) may be'
    'contacted at Support@PickLord.com.'
    'Counter-Notification Procedures. If you believe that material you posted on the Services was removed or access to it'
    'was disabled by mistake or mis-identification, you may file a counter-notification with us (a “Counter-Notice”) by'
    'submitting written notification to our copyright agent designated below. Pursuant to the DMCA, the Counter-Notice'
    'must substantially include the following:'
    '(1) Your physical or electronic signature.\n\n'
    '(2) An identification of the material that has been removed or to which access has been disabled and the'
    'location at which the material appeared before it was removed or access disabled.\n\n'
    '(3) Adequate information by which we can contact you (including your name, postal address, telephone'
    'number, and, if available, email address).\n\n'
    '(4) A statement under penalty of perjury by you that you have a good faith belief that the material'
    'identified above was removed or disabled as a result of a mistake or mis-identification of the material'
    'to be removed or disabled.\n\n'
    '(5) A statement that you will consent to the jurisdiction of the Federal District Court for the judicial'
    'district in which your address is located and that you will accept service from the person (or an'
    'agent of that person) who provided the Services with the complaint at issue.'
    'The DMCA allows us to restore the removed content if the party filing the original DMCA Notice does not file a'
    'court action against you within ten business days of receiving the copy of your Counter-Notice. Please be aware that'
    'if you knowingly materially misrepresent that material or activity on the Services was removed or disabled by'
    'mistake or mis-identification, you may be held liable for damages (including costs and attorneys\' fees) under Section'
    '512(f) of the DMCA.\n\n'
    'It is our policy in appropriate circumstances to disable and/or terminate the Accounts of Users who are repeat'
    'offenders.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '21. Warranty Disclaimer.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' PickLord does not warrant that your activities or use of the Site or App is lawful in any particular jurisdiction and,'
                  ' in any event, PickLord specifically disclaims such warranties. You understand that by using any of the features of'
                    ' the Site or App, you act at your own risk, and you represent and warrant that your activities are lawful in every'
                    ' jurisdiction where you access or use the Site or App or the content. Further, PickLord and its parents, subsidiaries,'
                    ' and affiliates disclaim any express or implied warranties including, without limitation, non-infringement,'
                    ' merchantability, fitness for a particular purpose, and title.'
                ' Your use of the Services is at your sole risk. The Services and the materials contained in these Terms are provided on'
                ' an “as is” and “as available” basis. Except as otherwise expressly provided in these Terms, PickLord and its'
                    ' affiliated companies and their respective officers, directors, employees, and other representatives expressly disclaim'
                ' all warranties of any kind pertaining to the Services and the materials contained in these Terms, whether express or'
                    ' implied, including without limitation the implied warranties of title, merchantability, fitness for a particular purpose,'
                    ' satisfactory quality, security, accuracy, availability, use of reasonable care and skill, and non-infringement, as well as'
                    ' warranties arising by usage or trade, course of dealing, and course of performance. PickLord makes no warranty'
                ' that (i) the Services will meet your requirement, (ii) the Services will be uninterrupted, timely, secure, or error-free'
            ' or free of viruses or bugs, (iii) the results that may be obtained from the use of the Services will be accurate or'
            ' reliable, and (iv) any errors in or on the Services will be corrected. Any material, content, or information'
            ' downloaded or otherwise obtained and/or used through the Services is done at your own discretion and risk and you'
          ' will be solely responsible for any damage to your computer system or loss of dada that results from the download of'
            ' any such material, content or information. No advice or information, whether oral or written, obtained by you from'
          ' PickLord on or through the Services shall create any warranty not expressly stated in these Terms.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '22. Limitation of Liability.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' In no event shall PickLord, its affiliates, or its/their directors, employees, agents, partners, suppliers, or content'
                    ' providers (the “PickLord Group”), be liable under contract, tort, negligence, or any other legal theory, including'
              ' without limitation any other equitable theory, with respect to or arising out of, or relating to the Services and/or these'
              ' Terms (i) for any lost profits; data loss; cost of procurement of substitute goods or services; or special, indirect,'
            ' incidental, punitive, or consequential damages of any kind, however arising; (ii) for any bugs, viruses, Trojan horses,'
          ' or the like, regardless of the source of origination); (iii) for any action taken in connection with an investigation by'
    ' PickLord or a law enforcement authority regarding your use of the Services or with any and all copyright owners;'
    ' and (iv) for any errors or omissions in the technical operation of the Services, even if foreseeable or if a party has'
    ' been advised of the possibility of such damages. All liability of the PickLord Group shall not exceed ten thousand naira'
    ' (#10,000.00). This limitation of liability is cumulative and not per incident (i.e., the existence of two or more'
    ' claims will not enlarge the limit). Nothing in these Terms limits or excludes liability that cannot be limited or'
    ' excluded under applicable law. Some states or countries do not allow the exclusion or limitation of incidental or'
    ' consequential damages, so the above limitations and exclusions may not apply to you, in which case the liability of'
    ' the PickLord Group shall be limited to the greatest extent of the law.\n\n'
    ' 23. Dispute Resolution, Arbitration, and Class Action Waiver.\n\n'
   ' PLEASE READ THIS SECTION 23 CAREFULLY – IT MAY SIGNIFICANTLY AFFECT YOUR LEGAL'
    ' RIGHTS, INCLUDING YOUR RIGHT TO FILE A LAWSUIT IN COURT\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '23.1.Informal Resolution',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' It is PickLord’ goal that the Services meet your expectations and live up to our promises to you. However, there'
                    ' may be instances when you or PickLord have a problem or dispute that needs special attention. In those instances,'
                    ' PickLord is committed to working with you to reach a reasonable resolution; however, we can only do this if we'
                ' know about and understand your issue. Therefore, for any problem or dispute that you may have with PickLord,'
                ' you acknowledge and agree that you will first give PickLord an opportunity to resolve your problem or dispute. To'
                ' initiate the dispute resolution process, you must first send us a written description of your problem or dispute within'
                    ' thirty (30) days of the Services at issue (the “Informal Resolution Request”) by sending an email to'
        ' Support@PickLord.com.'
            ' You and we further agree to meet and confer personally, by telephone, or by videoconference (hereinafter'
            ' “Conference”) to discuss the dispute and attempt in good faith to reach a mutually beneficial outcome that avoids'
     ' the expenses of arbitration or, where applicable, litigation. If you are represented by counsel, your counsel may'
          ' participate in the Conference as well, but you agree to fully participate in the Conference. Likewise, if we are'
      ' represented by counsel, our counsel may participate in the Conference as well, but we agree to have a company'
      ' representative fully participate in the Conference. The statute of limitations and any filing fee deadlines shall be'
      ' tolled while you and we engage in the informal dispute resolution process and Conference required by this Section'
      ' 23. If you and we do not reach agreement to resolve the dispute within sixty (60) days after initiation of this dispute'
      ' resolution process, either you or we may commence arbitration per the provisions below or, provided such claims'
      ' qualify, file an action in small claims court or file a claim for injunctive or equitable relief in a court of proper'
    ' jurisdiction for matters relating to intellectual property infringement.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '23.2. Binding Arbitration',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' Arbitration Proceeding. You and we agree to arbitrate all disputes, claims or controversy between us. This'
                    ' agreement to arbitrate (“Agreement to Arbitrate”) is intended to be broadly interpreted. It includes, but is not'
              ' limited to disputes, claims, and controversies: (i) arising out of or relating to any aspect of the relationship between'
            ' us, whether based in contract, tort, statute, fraud, misrepresentation, or any other legal theory, including but not'
        ' limited to those arising out of or relating to these Terms or the breach, termination, enforcement, interpretation or'
            ' validity thereof, including the determination of the scope or applicability of this Agreement to Arbitrate; and (ii)'
          ' claims that may arise after the termination of these Terms.'
          ' The Federal Arbitration Act governs the interpretation and enforcement of the Agreement to Arbitrate To begin an'
      ' arbitration proceeding after participating in the dispute resolution process, you must send a letter requesting'
      ' arbitration and describing your claim to our registered agent at PickLord LLC c/o Registered Agents Inc. You are still'
      ' responsible for all additional costs that you incur in the arbitration, including without limitation, fees for attorneys or'
      ' expert witnesses. You may choose to have the arbitration conducted by telephone or videoconference, based on'
          ' written submissions, in person in your hometown area, or at another mutually'
          ' agreed upon location that is reasonably convenient to you. Any judgment on the award rendered by the arbitrator'
      ' may be entered in any court of competent jurisdiction.'
      ' The arbitrator shall have exclusive authority to (a) determine the scope and enforceability of this Agreement to'
    ' Arbitrate and (b) resolve any dispute related to the interpretation, applicability, enforceability, or formation of this'
    ' Arbitration Agreement including, but not limited to, any claim that all or any part of this Agreement to Arbitrate is'
    ' void or voidable. The arbitrator will decide the rights and liabilities, if any, of you and us. The arbitration proceeding'
    ' will not be consolidated with any other matters or joined with any other cases or parties. The arbitrator shall have the'
    ' authority to grant motions dispositive of all or part of any claim. The arbitrator shall have the authority to award'
    ' monetary damages and to grant any non-monetary remedy or relief available to an individual under applicable law,'
    ' the arbitration forum’s rules, and these Terms. The arbitrator shall issue a written award and statement of decision'
    ' describing the essential findings and conclusions on which the award is based, including the calculation of any'
    ' damages awarded. The arbitrator has the same authority to award relief on an individual basis that a judge in a court'
    ' of law would have. The award of the arbitrator is final and binding upon you and us.'
    ' All claims and disputes within the scope of the Agreement to Arbitrate must be arbitrated on an individual basis and'
    ' not on a representative or collective class basis. Only individual relief is available, and claims of more'
    ' than one User, person, or entity cannot be arbitrated or consolidated with those of any other User, person, or entity.'
    ' Accordingly, under the arbitration procedures outlined in this Section 23, an arbitrator shall not combine or'
    ' consolidate more than one party’s claims without the written consent of all affected parties to an arbitration'
    ' proceeding. Without limiting the generality of the foregoing, you and we agree that no dispute shall proceed by way'
    ' of class arbitration without the written consent of all affected parties.'
    ' Waiver. You and we hereby waive any constitutional and statutory rights to sue in court and have a trial in front of a'
    ' judge or a jury. You and we are instead electing that all claims and disputes shall be resolved by arbitration under'' this Agreement to Arbitrate, except as specified in this Section 23. An arbitrator can award, on an individual basis,'
    ' the same damages and relief as a court and must follow these Terms as a court would. However, there is no judge or'
    ' jury in arbitration, and court review of an arbitration award is subject to very limited review.'
    ' 30-Day Right to Opt-Out. You have the right to opt-out and not be bound by the arbitration and class action waiver'
    ' provisions set forth above by sending written notice of your decision to opt-out to the address listed below. The'
    ' notice must be sent within 30 days of your first use of the Service, otherwise you shall be bound to arbitrate disputes'
     ' in accordance with the terms of those paragraphs. If you opt-out of these arbitration provisions, PickLord also will'
    ' not be bound by them.'
    ' Exceptions to Arbitration. You and PickLord agree that the following claims are not subject to the above provisions'
    ' concerning negotiations and binding arbitration: (a) any claim seeking to enforce or protect, or concerning the'
    ' validity of, any of PickLord’ intellectual property rights; (b) any claim related to, or arising from, allegations of'
    ' theft, fraud, misrepresentation, piracy, invasion of privacy or unauthorized use; and (c) any claim for PickLord’'
    ' equitable relief. In addition to the foregoing, PickLord may assert an individual action as described in Section 23.1.'
    ' Survival. The Agreement to Arbitrate will survive the termination of your relationship with us.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '24. Assignment.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' You may not assign the Terms in whole or in part, for any reason. These Terms will be binding upon and will inure'
                  ' to the benefit of the parties and their heirs, executors, administrators, successors, and assigns. PickLord may assign'
                ' the Terms or delegate any of its rights or obligations hereunder, or any part thereof, to any third party, including its'
                  ' successor in interest, without requiring your written consent.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '25. Entire Agreement; Severability.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' These Terms and other referenced material constitute the entire agreement between you and PickLord with respect'
                    ' to the Services, and supersede all prior or contemporaneous agreements, representations, warranties, and'
                    ' understandings (whether oral, written or electronic) between you and PickLord with respect to the Services and'
          ' govern the future relationship. If a court in any final, impossible to appeal proceeding holds any provision of these Terms or'
          ' its application to any person or circumstance invalid, illegal or unenforceable, the remainder of these Terms shall not'
          ' be affected and shall be valid, legal and enforceable.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '26. Geographic Limits of Service.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' PickLord make no representation that materials contained on the Services or products described or offered are'
                  ' appropriate or available for use in jurisdictions outside the Eligible Jurisdictions or that these Terms comply with the'
                ' laws of any other country. Accessing and participating in the Services is'
                  ' prohibited from territories where the Content and participation is illegal. If you access the Services from other'
                  ' locations, you do so at your own initiative and are responsible for compliance with local laws. You agree that you'
                ' will not access the Services from any jurisdiction where the Content and participation are illegal, and that you, and'
                  ' not PickLord, are responsible for compliance with applicable local laws.'
               ' PickLord reserves the right, at any time in our sole discretion, to limit the availability and accessibility of the'
                ' Services to any person, geographic area, or jurisdiction we so desire.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '27. Governing Law.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' These Terms (and any further rules, policies, or guidelines incorporated by reference) shall be governed by and'
                  ' construed in accordance with the laws of Nigeria, without giving effect to any'
                  ' principles of conflicts of law, and without application of the Uniform Computer Information Transaction Act or the'
                  ' United Nations Convention of Controls for International Sale of Goods.'
                  ' You, regardless of location or country of residence, whether within or outside of Nigeria, agree that'
                  ' PickLord and its Services are deemed passive and do not give rise to personal jurisdiction over PickLord or its'
                ' parents, subsidiaries, affiliates, successors, assigns, employees, agents, directors, officers, or shareholders, either'
                  ' specific or general. You agree that any action at law or in equity'
                ' arising out of or relating to these Terms, or your use or non-use of the Services, shall be filed only in the state or'
                ' federal courts located in Nigeria.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '28. Limitation of Time to File Claims.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' Any cause of action or claim you may have arising out of or relating to these Terms or the Services must be'
                    ' commenced within one (1) year after the cause of action accrues, otherwise the parties agree that such cause of'
          ' action or claim is permanently barred.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '29. No Third-Party Beneficiaries.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' You agree that, except as otherwise expressly provided in these Terms, there shall be no third-party beneficiaries to'
                  ' the Terms.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '30. No Waiver; Conflicts.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' No failure to exercise, and no delay in exercising, on the part of either party, any right or any power hereunder shall'
                  ' operate as a waiver thereof, nor shall any single or partial exercise of any right or power hereunder preclude further'
                ' exercise of that or any other right hereunder. In the event of a conflict between these Terms and any applicable other'
                  ' terms or agreements, the terms of these Terms shall govern.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '31. Force Majeure.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' The failure of PickLord to comply with any provision of these Terms due to an act of God, hurricane, tornado, war,'
                    ' fire, riot, earthquake, terrorism, pandemic, health emergency (whether or not officially declared by a government'
                ' authority), act of public enemies, actions of governmental authorities outside of the control of Company (excepting'
              ' compliance with applicable codes and regulations) or other force majeure event will not be considered a breach of'
        ' these Terms.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '32. Notice Policy and Your Consent.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' Under these Terms you are contracting with the Company. For the avoidance of doubt, we are entering into the'
                    ' Terms as principal and not as agent for any other PickLord Group company. Subject to any permitted assignment,'
                    ' the obligations owed by us under the Terms shall be owed to you solely by us and the obligations owed by you under'
                ' the Terms shall be owed solely to us.'
                    ' PickLord may give notice by means of a general notice on the Services, electronic mail to your email address on'
                ' record in PickLord’ Account information, or by written communication sent by first class mail or pre-paid post to'
                ' your address on record in PickLord’ Account information. Such notice shall be deemed to have been given upon'
                ' the expiration of forty-eight (48) hours after mailing or posting (if sent by first class mail or pre-paid post) or twelve'
            ' (12) hours after sending (if sent by email). Except as otherwise provided in the Terms, you may give notice to'
    ' PickLord (such notice shall be deemed given when received by PickLord) at any time by any of the following:'
    ' letter delivered by nationally recognized overnight delivery service or first-class postage prepaid mail to PickLord'
    ' at the addresses listed below.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '32. Notice Policy and Your Consent.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' Under these Terms you are contracting with the Company. For the avoidance of doubt, we are entering into the'
                      ' Terms as principal and not as agent for any other PickLord Group company. Subject to any permitted assignment,'
                      ' the obligations owed by us under the Terms shall be owed to you solely by us and the obligations owed by you under'
                      ' the Terms shall be owed solely to us.'
                      ' PickLord may give notice by means of a general notice on the Services, electronic mail to your email address on'
                      ' record in PickLord’ Account information, or by written communication sent by first class mail or pre-paid post to'
                      ' your address on record in PickLord’ Account information. Such notice shall be deemed to have been given upon'
                      ' the expiration of forty-eight (48) hours after mailing or posting (if sent by first class mail or pre-paid post) or twelve'
                      ' (12) hours after sending (if sent by email). Except as otherwise provided in the Terms, you may give notice to'
                      ' PickLord (such notice shall be deemed given when received by PickLord) at any time by any of the following:'
                      ' letter delivered by nationally recognized overnight delivery service or first-class postage prepaid mail to PickLord'
                      ' at the addresses listed below.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  '33. Contact.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' If you have any questions regarding these Terms, please contact us at Support@PickLord.com or by mail at the'
                  'email address below:\n\n'
                'PickLord LLC d/b/a PickLord\n\n'
                  'info@picklord.com\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  'Exhibit A\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  'PickLord Member Code of Conduct\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                  ' At PickLord, we are building a community of positive, fun-loving, skill-based, fantasy sports'
                  ' contestants who are looking to contribute to and enhance our virtual community. Like many'
                  ' communities, we have our own set of values and standards. Being part of the PickLord'
                  ' community is a privilege, not a right. By asking to participate on our platform and in our fantasy'
                  ' contests, you agree to uphold the following Member Code of Conduct while you are a member'
                ' of our community.\n\n'
                ' 1. I will always stay positive in my interactions with the PickLord community and will'
                  ' never use or exhibit abusive, unprofessional, bullying, or demeaning behavior or'
               ' language toward other PickLord’ members or staff.\n\n'
                ' 2. I will not contact PickLord staff directly at their personal addresses, social media'
                  ' accounts, or other physical or virtual locations and will direct communications through'
                ' existing PickLord accounts.\n\n'
                  ' 3. I will never encourage, facilitate or tolerate the play of minors or others who are'
                ' prohibited from participating in any PickLord fantasy contest, and when I see such'
                  ' conduct, I will report it immediately.\n\n'
                ' 4. I will never use non-public information or attempt to improperly influence an athlete or'
                ' official to gain an improper or unfair advantage for myself or others in any PickLord'
                ' fantasy contest.\n\n'
                  ' 5. I will always play responsibly which includes using the platform’s responsible gaming'
                ' tools that enable me to proactively set account alerts, entry limits, deposit limits and'
                ' timeouts when appropriate.\n\n'
               ' 6. If I am unable to play responsibly in a consistent manner, I will seek to exclude myself'
                ' through PickLord’ self-exclusion program.\n\n'
                ' 7. I will proactively intervene when I see others in the community who are exhibiting'
                ' irresponsible play by reporting that behavior to PickLord.\n\n'
                ' 8. I will never disparage PickLord or members of our community in on-line, public'
                  ' comments to others.\n\n'
                ' 9. I will always act in the best interests of the community, including finding ways to protect'
                ' and preserve the mission upon which our community is based.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

