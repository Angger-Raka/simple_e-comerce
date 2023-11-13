import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:home/home.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorName.primary,
        title: Text(l10n.profile),
      ),
      body: ListView(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 32.0),
            leading: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(50.0)),
              child: Image.network(
                'https://www.greenscene.co.id/wp-content/uploads/2022/03/Luffy-9.jpg',
                width: 60.0,
                height: 60.0,
                fit: BoxFit.cover,
              ),
            ),
            trailing: IconButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const EditNamePage()),
                // );
              },
              icon: const Icon(Icons.edit),
            ),
            title: const Text(''),
            subtitle: const Text(''),
          ),
          // MenuTile(
          //   title: 'Kelamin',
          //   value: 'Pria',
          //   iconPath: Assets.icons.gender.path,
          //   onTap: () {
          //     // Navigator.push(
          //     //   context,
          //     //   MaterialPageRoute(builder: (context) => const EditGenderPage()),
          //     // );
          //   },
          // ),
          // MenuTile(
          //   title: 'Tanggal Lahir',
          //   value: '12-12-2000',
          //   iconPath: Assets.icons.date.path,
          //   onTap: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //           builder: (context) => const EditBirthdatePage()),
          //     );
          //   },
          // ),
          MenuTile(
            title: 'Email',
            value: 'bahri@jagoflutter.com',
            iconPath: MainAssets.iconMessage,
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const EditEmailPage()),
              // );
            },
          ),
          MenuTile(
            title: l10n.phoneNumber,
            value: '(62) 856-9876-4321',
            iconPath: MainAssets.iconPhone,
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => const EditPhoneNumberPage()),
              // );
            },
          ),
          MenuTile(
            title: l10n.changePassword,
            value: '•••••••••••••••••',
            iconPath: MainAssets.iconPassword,
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => const EditPasswordPage()),
              // );
            },
          ),
        ],
      ),
    );
  }
}
