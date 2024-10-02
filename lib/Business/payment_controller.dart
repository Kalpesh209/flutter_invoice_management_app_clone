import 'package:flutter_invoice_management_app_clone/AppUtils/app_images.dart';
import 'package:flutter_invoice_management_app_clone/Models/payment_model.dart';

class PaymentController {
  final paymentList = [
    PaymentModel(
      avatar: AppImages.user1,
      userName: 'Mario Speedwagon',
      date: '2/12/2020',
      payment: '₹ 100',
    ),
    PaymentModel(
      avatar: AppImages.user2,
      userName: 'Mario Speedwagon',
      date: '3/12/2020',
      payment: '₹ 100',
    ),
    PaymentModel(
      avatar: AppImages.user3,
      userName: 'Walter Melon',
      date: '4/12/2020',
      payment: '₹ 100',
    ),
    PaymentModel(
      avatar: AppImages.user4,
      userName: 'Bob Frapples',
      date: '1/12/2020',
      payment: '₹ 100',
    ),
    PaymentModel(
      avatar: AppImages.user5,
      userName: 'Paige Turner',
      date: '1/12/2020',
      payment: '₹ 1100',
    ),
    PaymentModel(
      avatar: AppImages.user6,
      userName: 'Gail Forcewind',
      date: '5/12/2020',
      payment: '₹ 600',
    ),
    PaymentModel(
      avatar: AppImages.user7,
      userName: 'Anna Mull',
      date: '1/12/2020',
      payment: '₹ 100',
    ),
    PaymentModel(
      avatar: AppImages.user8,
      userName: 'Paul Molive',
      date: '1/12/2020',
      payment: '₹ 250',
    ),
    PaymentModel(
      avatar: AppImages.user9,
      userName: 'Anna Sthesia',
      date: '6/12/2020',
      payment: '₹ 1100',
    ),
    PaymentModel(
      avatar: AppImages.user10,
      userName: 'Petey Cruiser',
      date: '1/12/2020',
      payment: '₹ 400',
    ),
  ];
}
