.class public final Lzf/v1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt8/a;


# instance fields
.field public final a:Lzf/d1;


# direct methods
.method public constructor <init>(Lzf/d1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzf/v1;->a:Lzf/d1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;

    .line 2
    .line 3
    iget-object v0, p0, Lzf/v1;->a:Lzf/d1;

    .line 4
    .line 5
    iget-object v1, v0, Lzf/d1;->a:Laf/a;

    .line 6
    .line 7
    check-cast v1, Laf/b;

    .line 8
    .line 9
    invoke-virtual {v1}, Laf/b;->e()Landroid/content/SharedPreferences;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->a:Landroid/content/SharedPreferences;

    .line 14
    .line 15
    invoke-static {v0}, Lzf/d1;->b(Lzf/d1;)Lgf/b;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->b:Lgf/b;

    .line 20
    .line 21
    iget-object v0, v0, Lzf/d1;->b:Lvd/d;

    .line 22
    .line 23
    invoke-static {v0}, Lbf/b;->a(Lvd/d;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->c:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 28
    .line 29
    return-void
.end method
