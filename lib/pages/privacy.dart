import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../services/drawer.dart';

class Privacy extends StatelessWidget {
  Privacy({Key? key}) : super(key: key);
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
            text: 'PRIVACY POLICY \n\n',
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
      'At PickLord™ LLC, (collectively with their parents, subsidiaries, affiliates, agents, representatives, consultants, employees, officers, and directors, “PickLord,” “we,” “us,” “our,” and/or “Company”), a limited liability company in good standing, we respect and protect the privacy of visitors to PickLord.com (“Site”), and the users that create an Account, download and use the various fantasy sport services offered through the PickLord mobile application available on iOS and Android (“App”) (collectively, such services, including any new features and applications, together with the Site, the “Services”). PickLord maintains a strict policy to ensure the privacy of individuals who use our Services (“user(s)” or “you”). This policy (“Privacy Policy”) describes how PickLord processes and collects information, including Personal Information (as defined below) relating to our users.  Certain portions of this Privacy Policy also apply to other personal information collected or maintained by PickLord. Capitalized terms used in this Privacy Policy that are not defined have the same meaning as defined in the PickLord Terms of Service (“Terms”).\n\n'

      'By clicking accept and using any of the Services of PickLord which link to or reference this Privacy Policy, you consent to the terms of this Privacy Policy.  If you do not agree to the terms and conditions of this Privacy Policy, including having your Personal Information used in any of the ways described in this Privacy Policy, do not provide us with your information.   Please note, however, that if you don’t provide us with your information, you may not be able to use certain parts or features of our Site or we may not be able to provide you certain Services.\n\n',
        style: GoogleFonts.oswald(
          fontSize: 14,
          color: Colors.black,
        ),
      ),
                TextSpan(
                  text:
      'Changes and Updates to This Privacy Policy \n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                TextSpan(
                  text:
      'We reserve the right to revise or update this Privacy Policy at any time, and you should periodically read the Privacy Policy to learn of any revisions or updates.  If the revision or update is material, we will provide you notification via email or push notification; however, for non-material revisions or updates, we will notify you by posting the revised or updated Privacy Policy and its “Effective Date” on the Site. Using the Site thereafter constitutes your agreement to and acceptance of the Privacy Policy and its revisions or updates. \n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
      'Collection of Personal Information \n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
      'We collect both personally identifiable information and non-personally identifiable information about you to help you use the Site.  “Personal Information” is information that identifies, relates to, describes, is reasonably capable of being associated with, or could reasonably be linked, directly or indirectly, with a particular consumer or household, as defined by applicable privacy laws. \n\n'

      'We collect Personal Information about you in various ways, including: \n\n'

      ' - directly from you\n\n'
      ' - automatically when you use the Services \n\n'
      ' - from third parties \n\n',
                  style: GoogleFonts.oswald(
                  fontSize: 14,
                  color: Colors.black,
                ),
        ),


        TextSpan(
          text:
      'Information We Collect Directly from You\n\n',
          style: GoogleFonts.oswald(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),


      TextSpan(
        text:
      'You may provide Personal Information to us directly in numerous ways.  For example, when you:\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
      ' - signup to use the Services\n\n'
      ' - request certain materials\n\n'
      ' - communicate with us via email, phone, chat, or otherwise\n\n'
      'We collect the following types of Personal Information from you directly:\n\n'

      'Identifiers, including real name, date of birth, gender, postal address, unique identifier (username and password), email address, telephone number, driver’s license number, contents of dialog boxes or chats, responses to feedback requests and surveys.Including real name, postal address, telephone number, driver’s license number, NIN number, credit and debit card numbers, other financial information, Legally Protected Characteristics Under Federal Law, including age and gender, Sensitive Personal Information, including driver’s license number, NIN number, contents of mail, email, or texts, account log-in username and password\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
      'Special Categories of Information\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
      'Some of the data that we may collect is particularly sensitive (e.g., driver’s license number, NIN number, contents of mail, email, or texts, and account log-in username and password).  We only collect this information as provided by or consented by you.\n\n'

      'We only share this sensitive data for the purpose of providing the services you request or as consented for and will not be shared or used by us for any other purposes.\n\n',

                  style: GoogleFonts.oswald(
                  fontSize: 14,
                  color: Colors.black,
                ),
        ),
                  TextSpan(
                text:
      'Information We Collect About You\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                TextSpan(
                  text:
      'PickLord and third-party service providers may automatically collect data about you when you use the Services.  This information is primarily needed to maintain the security and operation of the Services, and for our internal analytics so that we can improve the Services.  This information includes:\n\n'

      'Commercial Information, including products or services purchased, obtained, considered, and other tendencies\n\n'
      'Internet or Other Electronic Network Activity Information, including browsing history, browser and device information, operating system, browser type, browsing actions and pattern, click streams, search history, contest history, information regarding your interaction with our Site, IP address, cookies, web beacons, pixel tags\n\n'
      'Geolocation, including IP address and GPS coordinate\n\n',

                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),

                  TextSpan(
                text:
      'Information We Receive from Third Parties\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                TextSpan(
                  text:
      'In some instances, PickLord may receive Personal Information and/or anonymous data about you from other parties, such as our affiliates, business partners, and service providers.  That information may be obtained online, offline, or through publicly available resources.  We may combine this data with the information you provide, and other data we already have about you.\n\n'

      'We may also receive information about you from social media platforms, such as when you interact with us on those platforms or access our social media content.  Please note that the information we may receive from those third-party sites (such as Facebook, Instagram, Twitter, and YouTube) is governed by the privacy settings, policies and/or procedures of the applicable platform, and we strongly encourage you to review them before submitting any information using a social media platform.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),

                TextSpan(
                  text:
      'Processing and Methods of Collection\n\n',
                  style: GoogleFonts.oswald(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
        ),

                TextSpan(
                  text:
      'We may use aggregated (anonymize) information about our users, and information that does not identify any individual, without restriction. We collect and use information for business and commercial purposes in accordance with the practices described in this Privacy Policy.  Our business purposes for collecting and using information include:\n\n'

      'To collect or disburse payment for transactions made through the Services;\n\n'
      'To generally enable you to use our Services;\n\n'
      'To provide you with information, products, or services that you request from us;\n\n'
      'To customize and personalize the content we deliver to you both on the Services;\n\n'
      'To provide customer service and support;\n\n'
      'To send you administrative messages about the Services;\n\n'
      'To carry out our obligations and enforce our rights arising from any contracts entered into between you and us, including for billing and collection;\n\n'
      'To notify you about changes to our Services or any products or services we offer or provide through it.\n\n'
      'To monitor and analyze trends, usage, and activities in connection with the Services;\n\n'
      'To investigate and prevent fraudulent transactions, unauthorized access to the Services, violations of the Terms, and other illegal activities;\n\n'
      'To share testimonials or reviews that you may have posted to the Services or other PickLord owned social media pages;\n\n'
      'In any other way we may describe when you provide the information;\n\n'
      'For any other purpose with your consent; and\n\n'
      'As otherwise set forth in this Privacy Policy.\n\n',

                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
      'Cookies & Similar Technologies\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                TextSpan(
                  text:
      'Cookies. Cookies are small pieces of data stored locally in the temporary memory of your web browser and/or the hard drive of your device. We use cookies to help us manage and report on your interaction with the Site or App. Through cookies, we are able to distinguish you from other Users, collect information that we use to improve the Services, keep count of return visits to our website or our advertisers\' or partners\' websites, collect and report on aggregate statistical information, authenticate your login credentials, or manage multiple instances of the Site in a single browser.  We may also collect other data such as the page or site that referred you to the Site, the date and time you visited the Site, and your current IP address.  You may refuse to accept browser cookies by activating the appropriate setting on your browser.  However, if you select this setting you may be unable to access certain parts of the Site or the functions of the Services may be impaired, therefore we disclaim, and you hereby waive, any claim or liability that may arise due to your partial or incomplete access to the content of any of our Services as a result thereof.  Unless you have adjusted your browser setting so that it will refuse cookies, our system will issue cookies when you direct your browser to our Site.\n\n'

      'The Help portion of the toolbar on most browsers will tell you how to prevent your browser from accepting new cookies, how to have the browser notify you when you receive a new cookie, or how to disable cookies altogether. For more information on cookies and how to disable them. On iOS devices you may also select “Limit Ad Tracking” and on Android devices you may select “Opt out of Interest-Based Ads” in your settings.\n\n'

      'Log Files and Web Beacons. Pages of the Site and our e-mails may contain small electronic files known as web beacons (also referred to as clear gifs, pixel tags, and single-pixel gifs) that permit the Company, for example, to count users who have visited those pages or opened an email and for other related website statistics (for example, recording the popularity of certain website content and verifying system and server integrity).  Occasionally, we connect personal information to information gathered in our log files as necessary to improve our Site and Services. In such a case, we would treat the combined information in accordance with this Privacy Policy.  Log files that we collect include IP addresses, browser type, domain names, access times, and physical location.\n\n'

      'Heat mapping and session recording. Heat mapping services are used to display the areas of a page where Users most frequently move the mouse or click. These services make it possible to monitor and analyze web traffic and keep track of User behavior.  Some of these services may record sessions and make them available for later visual playback\n\n'

      'Real-Time Location. Our Services collect real-time information about the location of your device. Disabling location data will impair the functions of Services, including prohibiting you from entering into Contests.\n\n',

                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                  TextSpan(
                text:
      'Google Analytics\n\n',
                    style: GoogleFonts.oswald(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                TextSpan(
                  text:
      'We use Google Analytics on our Services to help us analyze the traffic on our Services.  For more information on Google Analytics’ processing of Personal Information, please see http://www.google.com/policies/privacy/partners. You may opt out of the use of Google Analytics here: https://tools.google.com/dlpage/gaoptout.  We may also use your information to contact you about our own and third-parties’ goods and services that may be of interest to you. If you do not want us to use your information in this way, please adjust your user preferences in your account profile or by following the unsubscribe instructions included in our marketing communications.  For more information, see Choices About Your Personal Information.\n\n',

                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
      'Disclosure of Personal Information\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                TextSpan(
                  text:
      'We may share some information we collect about our Users, including Personal Information, with our service providers, and partners who assist us in operating the Site and providing our Products, and in some cases, legal authorities.\n\n'

      'Service Providers and Vendors. We use third party providers and vendors to help us operate and improve the Services on our behalf, such as web-hosting companies, information technology providers, web-development consultants, analytics providers, delivery of goods and services, processing of credit card payments, billing and debt collection, customer services, marketing and communications services and event hosting; and\n\n'
      'Flutter Wave. We use Flutter Wave as a payment processor.  For more information on Flutter Wave’s privacy practices, please visit https://www.flutterwave.com.\n\n'
      'Flutter Wave. We use Flutter Wave as a payment processor.  For more information on Flutter Waves’s privacy practices, please visit https://www.flutterwave.com.\n\n'
      'Flutter Wave. We use Flutter Wave as a payment processor.  For more information on Flutter Wave privacy practices, please visit Privacy Notice — Flutter Wave.\n\n'
      'Flutter Wave.  We use Flutter Wave as a payment vendor. PickLord has partnered with financial services software company Flutter Wave to offer you ACH payments. When you create a PickLord Account and connect a bank to complete ACH payments, you will be creating an Flutter Wave account. It is your responsibility to make sure the data you provide us is accurate and complete. You must comply also with Flutter Wave privacy policy (the “Flutter Wave Privacy Policy” Flutter Wave | Privacy Policy) when creating or using your PickLord Account. The Flutter Wave Privacy Policy may be modified from time to time, and the governing version is incorporated by reference into this Privacy Policy.\n\n'
      'Other Situations. We may use and disclose information outside of our day-to-day business practices and in ways unrelated to the Services.\n\n'
      'In the Event of Merger, Sale, Divestitures or Change of Control. We may transfer or assign Personal Information to an entity that acquires or is merged with us as part of a merger, acquisition, sale of ownership or assets, or other change of control.\n\n'
      'Affiliates.  We may disclose Personal Information about you to our affiliates.\n\n'
      'Other Disclosures. We may disclose Personal Information about you if we have a good faith belief that disclosure of such information is helpful or reasonably necessary to: (i) comply with any applicable law, regulation, legal process or governmental request; (ii) enforce our Terms of Service, including investigations of potential violations thereof; (iii) detect, prevent, or otherwise address fraud or security issues; or (iv) protect against harm to our, your, or third parties’ rights, property, or safety.\n\n'
      'Authorized Representatives. If another individual is managing your account on your behalf (for example, a wife managing the account of her husband), as authorized by you or as a personal representative under applicable law, that person can view all Personal Information about you.\n\n'
      'With Your Consent. We may share your information for other purposes pursuant to your consent or at your direction.\n\n'
      'We do not sell, rent or otherwise share any information with unaffiliated entities except as described in this Privacy Policy, or with your prior permission.  We may share or use anonymous information in any manner we choose.  Anonymous information, which is de-identified or non-personal information, is information assembled into groupings that can no longer be reasonably used to identify you or your organization.\n\n'

      'Other than as set out above, you will receive notice when information about you might go to third parties, and you will have an opportunity to choose not to share the information.\n\n',
                  style: GoogleFonts.oswald(
                  fontSize: 14,
                  color: Colors.black,
                ),
        ),
        TextSpan(
          text:
      'Third Party Links\n\n',
          style: GoogleFonts.oswald(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
                TextSpan(
                  text:
      'The Services may link to third-party websites, online services, mobile applications and/or contain advertisements from third parties that are not affiliated with us—and which may link to other websites, services, or applications.  Please be aware that we are not responsible for the privacy or practices of other websites or third parties, including those using the PickLord branding.  We do not make any guarantee regarding those third-party websites, services, or applications, and we are not liable for any loss or damage caused by the use of such sites.  Any data collected by third parties is not covered by this Privacy Policy.  You should review the policies of the third parties and contact them directly if you have any questions about their services or practices.\n\n',
                  style: GoogleFonts.oswald(
                  fontSize: 14,
                  color: Colors.black,
                ),
        ),
                TextSpan(
                  text:
      'Public Activities\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
      'PickLord may offer publicly available spaces on the Services where you and other users may communicate, interact, and engage with each other as well as add information about yourself and your content (“Public Activities”).  If you choose to engage in Public Activities on the Services, please be aware that any information you share may be read, collected, or used by other users, third parties, and the public, including those that do not adhere to our Privacy Policy.  The protections described in this Privacy Policy do not apply when you provide information, including any Personal Information, in connection with Public Activities. You should use caution in disclosing Personal Information on your profile or on any other publicly available space on the Services.  Depending on the permissions you grant, a third party may be able to obtain your account information and other information you choose to provide.  We are not responsible for events arising from the distribution of any information you choose to publicly post or share throughout the Services.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),

          TextSpan(
                text:
      'Confidentiality and Security\n\n',

                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                TextSpan(
                  text:
      'PickLord values your privacy and is committed to protecting your information. As such, we have implemented appropriate administrative, technical, and physical safeguards designed to secure your Personal Information from accidental loss and from unauthorized access, use, alteration, or disclosure.  We undertake commercially reasonable efforts to guard against unauthorized access, use, alteration, or destruction of Personal Information, which efforts you agree are sufficient, adequate, and complete.  When contracting with supplies and/or service providers, PickLord takes appropriate steps to ensure that such third parties are required to maintain adequate protection of Personal Information.\n\n'

      'The safety and security of your information also depends on you.  Where we have given you (or where you have chosen) a password for access to certain parts of our Services, you are responsible for keeping this password confidential. We ask you not to share your password with anyone.  We urge you to be careful about giving out information in Public Activities of the Services like company profile pages or message boards.  The information you share in Public Activities may be viewed by any user of the Services and, depending on where the information is posted, by some users of the Services.\n\n'

      'Unfortunately, the transmission of information via the internet is not completely secure.  Although we do our best to protect your personal information, we cannot guarantee the security of your Personal Information transmitted to the Services. Any transmission of Personal Information is at your own risk.  We are not responsible for circumvention of any privacy settings or security measures contained on the Services.\n\n',
                  style: GoogleFonts.oswald(
                  fontSize: 14,
                  color: Colors.black,
                ),
        ),
                TextSpan(
                  text:
      'Information Retention\n\n',
                  style: GoogleFonts.oswald(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
        ),
                TextSpan(
                  text:
      'We keep your Personal Information only as long as necessary to provide you with our Services and for legitimate and essential business purposes, such as maintaining the performance of the Services, making data-driven business decisions about new features and offerings, complying with our legal obligations (which may include following retention schedules), and resolving disputes.\n\n',
                  style: GoogleFonts.oswald(
                  fontSize: 14,
                  color: Colors.black,
                ),
        ),
                TextSpan(
                  text:
      'International Transfer of Personal Information\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
      'The Services are only available within Nigeria.  PickLord stores personal information about users within Nigeria. If you are using the Services from outside Nigeria, please note that you are agreeing to the transfer of your Personal Information to Nigeria. Nigeria may have laws which are different, and potentially not as protective, as the laws of your own country.  By providing your Personal Information, you consent to any transfer and processing in accordance with this Privacy Policy.\n\n',
                  style: GoogleFonts.oswald(
                  fontSize: 14,
                  color: Colors.black,
                ),
                ),
                TextSpan(
                  text:
      'Choices About Your Personal Information\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
      'You have choices about how we use your information.  Please understand that if you choose not to disclose information to us, it may affect your ability to use some features of the Services.\n\n',
                  style: GoogleFonts.oswald(
                  fontSize: 14,
                  color: Colors.black,
                ),
        ),
                TextSpan(
                  text:
      'Account Profile\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
      'You can review and change your Personal Information by visiting your account profile page.  You may also send us an email to request access to, correct or delete any personal information that you have provided to us.  If you request us to delete your Personal Information, that will be accomplished by deactivation of your account; however, we may not be able to accommodate a request to change or fully delete information if we believe the change or deletion would violate any law or legal requirement or cause the information to be incorrect.  If we are unable to delete your information due to legal requirements, including “Know Your Customer” requirements and responsible gaming regulations, the portion of your information that we do not delete will be retained in deactivated status for purposes of compliance with our legal obligations.\n\n',

                  style: GoogleFonts.oswald(
                  fontSize: 14,
                  color: Colors.black,
                ),
        ),
        TextSpan(
          text:
      'Please note, if you delete user contributions in Public Activities from the Services, copies of your user contributions may remain viewable in cached and archived pages or might have been copied or stored by other users.\n\n',
          style: GoogleFonts.oswald(
          fontSize: 14,
          color: Colors.black,
        ),
        ),
        TextSpan(
          text:
      'Marketing\n\n',
          style: GoogleFonts.oswald(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
                TextSpan(
                  text:

      'If you have provided your email address to us, we may send you emails or notifications to provide you with information, to inform you of new events or content, to solicit your feedback, or to keep you up to date on us. You can opt out of our marketing communications at any time by clicking the link in the footer of all non-transactional emails or otherwise following the opt-out prompts on these communications. You also may ask us not to send you other marketing communications by contacting us as specified in the Contact Us section below, and we will honor your request.  Please note that even after you are removed from our marketing lists, we may still send you non-promotional communications, such as responding to service requests.  Moreover, some communications, however, are considered transactional and are necessary for all Users (e.g. important account notifications and billing information).  You must cancel your PickLord account to unsubscribe from transactional communications.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),

                TextSpan(
                  text:
      'Advertisements\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
      'Advertisements appearing on the Services may be delivered by advertising partners, who may use cookies. These cookies allow the ad server to recognize your computer each time they send you an online advertisement to compile information about you or others who use your computer.  This information allows ad networks to, among other things, deliver targeted advertisements that they believe will be of most interest to you.  This Privacy Policy covers the use of cookies by us and does not cover the use of cookies by any advertisers.\n\n'

      'We and our service providers may use information about your interactions with the Site to predict your interests and select the ads you see on and off the Site.  This is known as interest-based advertising.  In providing interest-based ads, we follow the Self-Regulatory Principles for Online Behavioral Advertising developed by the Digital Advertising Alliance ("DAA").  For more information about interest-based advertising and how you can opt out, visit:\n\n'

      'Digital Advertising Alliance: http://www.aboutads.info/choices\n\n'
      'Network Advertising Initiative: http://www.networkadvertising.org/choices/\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
      'Do-Not-Track Disclosure\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
      'Many web browsers include a Do Not Track (“DNT”) feature or setting that signals your preference not to have data about your online browsing activities monitored and collected.  However, there is currently no uniform standard for recognizing and implementing DNT signals.  As such, PickLord does not monitor or respond to DNT browser requests.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
      'Children\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
      'Our Services are not intended for children. No one under the age of 19 may provide any personal information to or on the Services. We do not knowingly collect personal information from individuals under 19. If you are under 19, do not use the Services, make any purchases, use any of the interactive or public comment features, or provide any information about yourself to us, including your name, address, telephone number, email address, or any screen name or username you may use. If we learn we have collected or received personal information from a child, we will delete that information. If you believe we might have any information from or about a child under 18, please contact us as set forth in the Contact Us section below.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
      'Authorized Representatives\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
      'You may designate an authorized agent to request any of the above rights on your behalf.  You may make such a designation by providing the agent with written permission, signed by you, to act on your behalf.  Your agent may contact us as described in the Contact Us section below to make a request on your behalf.  Even if you choose to use an agent, we may, as permitted by law, require:\n\n'

      'The authorized agent to provide proof that you provided signed permission to the authorized agent to submit the request;\n\n'
      'You to verify your identity directly with us; or\n\n'
      'You to directly confirm with us that you provided the authorized agent permission to submit the request.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
      'Selling, Sharing, and Disclosing Personal Information\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
      'We do not sell or share your Personal Information in exchange for monetary consideration.  However, the definitions of Personal Information, ‘share,’ and ‘sale’ under CCPA are broad.  Like many companies, we use services that help deliver interest-based ads and personalization to you, which may involve transfer Personal Information to business partners for their use, such as Google Analytics.  Because the definitions of ‘Personal Information,’ ‘share,’ and ‘sale’ under CCPA are broad, making Personal Information available to these companies may be considered a “sale” or “sharing” under CCPA.  Because of the breadth of these definitions under CCPA, we have provided opt-out links.  You have the right to direct us not to sell or share your Personal Information.  You may exercise your opt-out rights by contacting us using a method listed in the Contact Us section.\n\n'

      'During the 12-month period prior to the “Last Modified” date of this Privacy Policy, we may have shared or disclosed the following categories of Personal Information about you for a business or commercial purpose with certain categories of third parties, as described below:\n\n'

      'Categories of Personal Information that May Be Sold, Shared, or Disclosed\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
      'Sources of Collected Information\n\n'

      'Categories of Third Parties to whom Personal Information May Be Sold, Shared, or Disclosed\n\n'

      'Business or Commercial Purpose of Selling, Sharing, or Disclosing Personal Information\n\n'

      'Identifiers\n\n'

      'Directly from you; Automatically when you use the Services; From Third Parties\n\n'

      'Service Providers\n\n'
      'Vendors\n\n'

      'Enable you to use the Services\n\n'
      'Provide customer support\n\n'
      'Provide you with information and services\n\n'
      'Process or fulfill your transactions\n\n'
      'Rectify any complaints about a service or feature\n\n'
      'Notify of any changes\n\n'
      'Support our internal and business operations\n\n'
      'Investigate and prevent fraudulent transactions and violations of the Terms and other illegal activities\n\n'

      'Directly from you; From Third Parties\n\n'

      'Service Providers\n\n'
      'Vendors\n\n'


      'Enable you to use the Services\n\n'
      'Provide customer support\n\n'
      'Process or fulfill your transactions\n\n'
      'Rectify any complaints about a service or feature\n\n'
      'Support our internal and business operations\n\n'
      'Fulfill your request\n\n'
      'Legally Protected Characteristics under Federal Law\n\n'

      'Directly from you; From Third Parties\n\n'

      'Service Providers\n\n'
      'Vendors\n\n'
      'Support our internal and business operations\n\n'
      'Commercial Purchase Information\n\n'

      'Automatically when you use the Services\n\n'

      'Service Providers\n\n'
      'Vendors\n\n'
      'Advertising Partners\n\n'
      'Market our products and services to you\n\n'
      'Monitor and analyze trends, usage, and activities in connection with the Services\n\n'
      'Internet or Other Electronic Information Activity\n\n'

      'Automatically when you use the Services\n\n'

      'Service Providers\n\n'
      'Advertising Partners\n\n'
      'Maintain and operate our Services\n\n'
      'Support our internal and business operations\n\n'
      'Market our products and services to you\n\n'
      'Research and understand how you use our products and services\n\n'
      'Investigate and prevent fraudulent transactions and violations of the Terms and other illegal activities\n\n'
      'Geolocation\n\n'

      'Automatically when you use the Services\n\n'

      'Service Providers\n\n'
      'Dealers\n\n'
      'Maintain and operate our Services and Site\n\n'
      'Support our internal and business\n\n'
      'Sensitive Personal Information\n\n'

      'Directly from you; From Third Parties; Automatically when you use the Site\n\n'

      'Service Providers\n\n'
      'Dealers\n\n'
      'Enable you to use the Services\n\n'
      'Provide customer support\n\n'
      'Provide you with information and services\n\n'
      'Process or fulfill your transactions\n\n'
      'Rectify any complaints about a service or feature\n\n'
      'Notify of any changes\n\n'
      'Support our internal and business operations\n\n'
      'Investigate and prevent fraudulent transactions and violations of the Terms and other illegal activities\n\n'
      'The categories of parties with whom we disclose Personal Information are described in detail in the Disclosure of Personal Information section of this Privacy Policy.\n\n'
      'The retention periods for Personal Information collected by us are described in detail in the Information Retention section of this Privacy Policy.\n\n'
      'The purpose for collection of the categories is described in detail in the Processing Purposes section of this Privacy Policy.\n\n',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),

                TextSpan(
                  text:
      'Contact Us\n\n',
                  style: GoogleFonts.oswald(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
        ),
                  TextSpan(
                    text:
      'If you believe that you have been harmed by an act of ours in violation of law, we encourage you to contact us directly in order to resolve your concern. To contact us, including if you have questions about this Privacy Policy, please contact support@PickLord.com or use our customer support chat tool located on the Services.\n\n',
      style: GoogleFonts.oswald(
        fontSize: 14,
        fontWeight: FontWeight.bold,
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
