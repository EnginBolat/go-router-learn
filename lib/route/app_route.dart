import 'package:go_router/go_router.dart';
import 'package:go_router_learn/view/details_page/view/details_page.dart';
import 'package:go_router_learn/view/home_page/view/home_page.dart';
import 'package:go_router_learn/view/route_error_page/view/route_error_page.dart';

class AppRoute {
  GoRouter router = GoRouter(
    initialLocation: "/",
    routes: <GoRoute>[
      GoRoute(
        name:
            "home_page", //Bu alan opsiyonel olmakla birlikte isterseniz doldurmadan da geçebilirsiniz
        path: "/",
        builder: (context, state) {
          return const HomePage();
        },
      ),
      GoRoute(
        name: "details_page",
        path: '/details/:data',
        builder: (context, state) {
          return DetailsPage(data: state.params['data'].toString());
        },
      ),
    ],
    errorBuilder: (context, state) {
      return RouteErrorPage(error: state.error.toString());
    },
  );
}
