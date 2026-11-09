import 'package:flutter/material.dart';

void main() {
  runApp(const AlAmirApp());
}

class AlAmirApp extends StatefulWidget {
  const AlAmirApp({super.key});

  @override
  State<AlAmirApp> createState() => _AlAmirAppState();
}

class _AlAmirAppState extends State<AlAmirApp> {
  String language = 'ar';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AL AMIR DELIVERY',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFF7900),
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
      ),
      home: Directionality(
        textDirection: language == 'en' ? TextDirection.ltr : TextDirection.rtl,
        child: WelcomeScreen(
          language: language,
          onLanguageChanged: (value) => setState(() => language = value),
        ),
      ),
    );
  }
}

class Words {
  static const Map<String, Map<String, String>> data = {
    'ar': {
      'welcome': 'أهلاً بك في',
      'tagline': 'أسرع • أمان • ثقة',
      'language': 'اختر اللغة',
      'continue': 'متابعة',
      'continueGuest': 'المتابعة كزائر',
      'login': 'تسجيل الدخول',
      'guest': 'زائر',
      'phone': 'رقم الهاتف',
      'password': 'كلمة المرور',
      'role': 'نوع الحساب',
      'admin': 'المدير العام',
      'supervisor': 'المشرف',
      'driver': 'السائق',
      'shop': 'المطعم / المحل',
      'dashboard': 'لوحة التحكم',
      'orders': 'الطلبات',
      'drivers': 'السائقون',
      'map': 'خريطة السائقين',
      'wallet': 'المحفظة',
      'shifts': 'الشفتات',
      'reports': 'التقارير',
      'settings': 'الإعدادات',
      'myOrders': 'طلباتي',
      'newOrder': 'طلب جديد',
      'logout': 'تسجيل الخروج',
      'demo': 'نسخة تجريبية للواجهة',
      'loginError': 'يرجى إدخال رقم الهاتف وكلمة المرور',
      'orderDetails': 'تفاصيل الطلب',
      'item': 'ماذا تريد أن تطلب؟',
      'address': 'عنوان التوصيل',
      'contactPhone': 'رقم للتواصل',
      'submitOrder': 'إرسال الطلب',
      'requiredFields': 'يرجى تعبئة جميع الحقول',
      'orderReceived': 'تم تسجيل طلبك التجريبي بنجاح',
      'guestNote': 'يمكنك استعراض التطبيق كزائر. تسجيل الطلب تجريبي ولا يُرسل إلى مطعم.',
      'backToDashboard': 'العودة إلى لوحة التحكم',
    },
    'ku': {
      'welcome': 'بەخێربێیت بۆ',
      'tagline': 'خێرا • پارێزراو • متمانەپێکراو',
      'language': 'زمان هەڵبژێرە',
      'continue': 'بەردەوام بە',
      'continueGuest': 'بەردەوام بە وەک میوان',
      'login': 'چوونەژوورەوە',
      'guest': 'میوان',
      'phone': 'ژمارەی مۆبایل',
      'password': 'وشەی نهێنی',
      'role': 'جۆری هەژمار',
      'admin': 'بەڕێوەبەری گشتی',
      'supervisor': 'چاودێر',
      'driver': 'شۆفێر',
      'shop': 'چێشتخانە / دوکان',
      'dashboard': 'پەڕەی سەرەکی',
      'orders': 'داواکارییەکان',
      'drivers': 'شۆفێران',
      'map': 'نەخشەی شۆفێران',
      'wallet': 'جزدان',
      'shifts': 'شفتەکان',
      'reports': 'ڕاپۆرتەکان',
      'settings': 'ڕێکخستنەکان',
      'myOrders': 'داواکارییەکانم',
      'newOrder': 'داواکاری نوێ',
      'logout': 'چوونەدەرەوە',
      'demo': 'وەشانی تاقیکاری',
      'loginError': 'ژمارەی مۆبایل و وشەی نهێنی بنووسە',
      'orderDetails': 'وردەکاری داواکاری',
      'item': 'چی دەتەوێت داوا بکەیت؟',
      'address': 'ناونیشانی گەیاندن',
      'contactPhone': 'ژمارەی پەیوەندی',
      'submitOrder': 'ناردنی داواکاری',
      'requiredFields': 'تکایە هەموو خانەکان پڕ بکەرەوە',
      'orderReceived': 'داواکاری تاقیکارییەکەت تۆمار کرا',
      'guestNote': 'دەتوانیت وەک میوان ئەپەکە ببینیت. تۆمارکردنی داواکاری تاقیکارییە و بۆ چێشتخانە نانێردرێت.',
      'backToDashboard': 'گەڕانەوە بۆ پەڕەی سەرەکی',
    },
    'en': {
      'welcome': 'WELCOME TO',
      'tagline': 'FASTER • SAFER • TRUSTED',
      'language': 'Choose language',
      'continue': 'Continue',
      'continueGuest': 'Continue as guest',
      'login': 'Login',
      'guest': 'Guest',
      'phone': 'Phone number',
      'password': 'Password',
      'role': 'Account type',
      'admin': 'General Manager',
      'supervisor': 'Supervisor',
      'driver': 'Driver',
      'shop': 'Restaurant / Shop',
      'dashboard': 'Dashboard',
      'orders': 'Orders',
      'drivers': 'Drivers',
      'map': 'Drivers Map',
      'wallet': 'Wallet',
      'shifts': 'Shifts',
      'reports': 'Reports',
      'settings': 'Settings',
      'myOrders': 'My Orders',
      'newOrder': 'New Order',
      'logout': 'Logout',
      'demo': 'Interface demo version',
      'loginError': 'Enter your phone number and password',
      'orderDetails': 'Order details',
      'item': 'What would you like to order?',
      'address': 'Delivery address',
      'contactPhone': 'Contact phone number',
      'submitOrder': 'Submit order',
      'requiredFields': 'Please complete all fields',
      'orderReceived': 'Your demo order has been recorded',
      'guestNote': 'Browse the app as a guest. Order submission is a demo and will not be sent to a restaurant.',
      'backToDashboard': 'Back to dashboard',
    },
  };

  static String get(String language, String key) =>
      data[language]?[key] ?? data['en']![key]!;
}

class WelcomeScreen extends StatelessWidget {
  final String language;
  final ValueChanged<String> onLanguageChanged;

  const WelcomeScreen({
    super.key,
    required this.language,
    required this.onLanguageChanged,
  });

  @override
  Widget build(BuildContext context) {
    final t = (String key) => Words.get(language, key);
    final isEnglish = language == 'en';

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.delivery_dining, size: 100, color: Color(0xFFFF7900)),
                const SizedBox(height: 12),
                Text(t('welcome'), style: const TextStyle(fontSize: 18)),
                const SizedBox(height: 8),
                const Text(
                  'AL AMIR',
                  style: TextStyle(fontSize: 38, fontWeight: FontWeight.w900, letterSpacing: 2),
                ),
                const Text(
                  'DELIVERY',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFFFF7900), letterSpacing: 5),
                ),
                const SizedBox(height: 12),
                Text(t('tagline'), style: const TextStyle(color: Colors.grey)),
                const SizedBox(height: 45),
                Align(
                  alignment: isEnglish ? Alignment.centerLeft : Alignment.centerRight,
                  child: Text(t('language'), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                ),
                const SizedBox(height: 10),
                DropdownButtonFormField<String>(
                  value: language,
                  decoration: const InputDecoration(border: OutlineInputBorder(), prefixIcon: Icon(Icons.language)),
                  items: const [
                    DropdownMenuItem(value: 'ar', child: Text('العربية')),
                    DropdownMenuItem(value: 'ku', child: Text('کوردی - سۆرانی')),
                    DropdownMenuItem(value: 'en', child: Text('English')),
                  ],
                  onChanged: (value) {
                    if (value != null) onLanguageChanged(value);
                  },
                ),
                const SizedBox(height: 25),
                SizedBox(
                  width: double.infinity,
                  height: 54,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFFF7900), foregroundColor: Colors.white),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => Directionality(
                        textDirection: isEnglish ? TextDirection.ltr : TextDirection.rtl,
                        child: LoginScreen(language: language),
                      )),
                    ),
                    child: Text(t('continue'), style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(height: 30),
                Text(t('demo'), style: const TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  final String language;

  const LoginScreen({super.key, required this.language});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  String role = 'driver';
  String? error;

  @override
  void dispose() {
    phoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void openDashboard(String selectedRole) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => Directionality(
        textDirection: widget.language == 'en' ? TextDirection.ltr : TextDirection.rtl,
        child: DashboardScreen(language: widget.language, role: selectedRole),
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = (String key) => Words.get(widget.language, key);
    final roles = {
      'admin': t('admin'),
      'supervisor': t('supervisor'),
      'driver': t('driver'),
      'shop': t('shop'),
    };

    return Scaffold(
      appBar: AppBar(title: Text(t('login'))),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const Icon(Icons.lock_person, size: 75, color: Color(0xFFFF7900)),
              const SizedBox(height: 25),
              TextField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(labelText: t('phone'), border: const OutlineInputBorder(), prefixIcon: const Icon(Icons.phone)),
              ),
              const SizedBox(height: 18),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(labelText: t('password'), border: const OutlineInputBorder(), prefixIcon: const Icon(Icons.lock)),
              ),
              const SizedBox(height: 18),
              DropdownButtonFormField<String>(
                value: role,
                decoration: InputDecoration(labelText: t('role'), border: const OutlineInputBorder()),
                items: roles.entries.map((entry) => DropdownMenuItem(value: entry.key, child: Text(entry.value))).toList(),
                onChanged: (value) {
                  if (value != null) setState(() => role = value);
                },
              ),
              if (error != null) ...[
                const SizedBox(height: 12),
                Text(error!, style: const TextStyle(color: Colors.red)),
              ],
              const SizedBox(height: 28),
              SizedBox(
                width: double.infinity,
                height: 54,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFFF7900), foregroundColor: Colors.white),
                  onPressed: () {
                    if (phoneController.text.trim().isEmpty || passwordController.text.isEmpty) {
                      setState(() => error = t('loginError'));
                      return;
                    }
                    openDashboard(role);
                  },
                  child: Text(t('login'), style: const TextStyle(fontSize: 18)),
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                height: 54,
                child: OutlinedButton.icon(
                  icon: const Icon(Icons.person_outline),
                  style: OutlinedButton.styleFrom(foregroundColor: const Color(0xFFFF7900), side: const BorderSide(color: Color(0xFFFF7900))),
                  onPressed: () => openDashboard('guest'),
                  label: Text(t('continueGuest'), style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  final String language;
  final String role;

  const DashboardScreen({super.key, required this.language, required this.role});

  @override
  Widget build(BuildContext context) {
    final t = (String key) => Words.get(language, key);
    final List<String> features;

    if (role == 'guest') {
      features = ['newOrder'];
    } else if (role == 'admin') {
      features = ['orders', 'drivers', 'map', 'wallet', 'shifts', 'reports', 'settings'];
    } else if (role == 'supervisor') {
      features = ['orders', 'drivers', 'map', 'reports'];
    } else if (role == 'driver') {
      features = ['myOrders', 'wallet', 'shifts', 'settings'];
    } else {
      features = ['newOrder', 'orders', 'reports', 'settings'];
    }

    const icons = {
      'orders': Icons.receipt_long,
      'drivers': Icons.delivery_dining,
      'map': Icons.map,
      'wallet': Icons.account_balance_wallet,
      'shifts': Icons.schedule,
      'reports': Icons.bar_chart,
      'settings': Icons.settings,
      'myOrders': Icons.list_alt,
      'newOrder': Icons.add_shopping_cart,
    };

    return Scaffold(
      appBar: AppBar(title: Text(t('dashboard')), backgroundColor: const Color(0xFFFF7900), foregroundColor: Colors.white),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Color(0xFFFF7900)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.delivery_dining, size: 55, color: Colors.white),
                  Text('AL AMIR DELIVERY', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: Text(t('logout')),
              onTap: () => Navigator.popUntil(context, (route) => route.isFirst),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(t(role == 'guest' ? 'guest' : role), style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            if (role == 'guest') ...[
              const SizedBox(height: 8),
              Text(t('guestNote'), style: const TextStyle(color: Colors.black54)),
            ],
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                itemCount: features.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 12, mainAxisSpacing: 12, childAspectRatio: 1.15),
                itemBuilder: (context, index) {
                  final feature = features[index];
                  return Card(
                    elevation: 2,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(12),
                      onTap: () {
                        if (role == 'guest' && feature == 'newOrder') {
                          Navigator.push(context, MaterialPageRoute(builder: (_) => Directionality(
                            textDirection: language == 'en' ? TextDirection.ltr : TextDirection.rtl,
                            child: GuestOrderScreen(language: language),
                          )));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${t(feature)} - ${t('demo')}')));
                        }
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(icons[feature] ?? Icons.apps, size: 42, color: const Color(0xFFFF7900)),
                          const SizedBox(height: 12),
                          Text(t(feature), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GuestOrderScreen extends StatefulWidget {
  final String language;

  const GuestOrderScreen({super.key, required this.language});

  @override
  State<GuestOrderScreen> createState() => _GuestOrderScreenState();
}

class _GuestOrderScreenState extends State<GuestOrderScreen> {
  final itemController = TextEditingController();
  final addressController = TextEditingController();
  final phoneController = TextEditingController();
  String? error;

  @override
  void dispose() {
    itemController.dispose();
    addressController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = (String key) => Words.get(widget.language, key);

    return Scaffold(
      appBar: AppBar(title: Text(t('orderDetails'))),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(controller: itemController, decoration: InputDecoration(labelText: t('item'), border: const OutlineInputBorder(), prefixIcon: const Icon(Icons.restaurant_menu))),
              const SizedBox(height: 16),
              TextField(controller: addressController, maxLines: 2, decoration: InputDecoration(labelText: t('address'), border: const OutlineInputBorder(), prefixIcon: const Icon(Icons.location_on))),
              const SizedBox(height: 16),
              TextField(controller: phoneController, keyboardType: TextInputType.phone, decoration: InputDecoration(labelText: t('contactPhone'), border: const OutlineInputBorder(), prefixIcon: const Icon(Icons.phone))),
              if (error != null) ...[
                const SizedBox(height: 12),
                Text(error!, style: const TextStyle(color: Colors.red)),
              ],
              const SizedBox(height: 24),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFFF7900), foregroundColor: Colors.white, padding: const EdgeInsets.symmetric(vertical: 16)),
                icon: const Icon(Icons.send),
                label: Text(t('submitOrder')),
                onPressed: () {
                  if (itemController.text.trim().isEmpty || addressController.text.trim().isEmpty || phoneController.text.trim().isEmpty) {
                    setState(() => error = t('requiredFields'));
                    return;
                  }
                  setState(() => error = null);
                  showDialog<void>(
                    context: context,
                    builder: (dialogContext) => AlertDialog(
                      icon: const Icon(Icons.check_circle, color: Color(0xFFFF7900), size: 42),
                      content: Text(t('orderReceived'), textAlign: TextAlign.center),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(dialogContext);
                            Navigator.pop(context);
                          },
                          child: Text(t('backToDashboard')),
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(height: 12),
              Text(t('guestNote'), textAlign: TextAlign.center, style: const TextStyle(color: Colors.black54)),
            ],
          ),
        ),
      ),
    );
  }
}
