.class public final synthetic Landroidx/camera/core/impl/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements Landroidx/fragment/app/FragmentResultListener;
.implements La7/a$a;
.implements Lio/realm/g0$a;
.implements Lh5/e;
.implements Lh5/g;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/camera/core/impl/p;->a:I

    iput-object p2, p0, Landroidx/camera/core/impl/p;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(La7/b;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/p;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ld6/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object v1, Lc5/y;->g:Lc5/y;

    .line 9
    .line 10
    const-string v2, "AnalyticsConnector now available."

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lc5/y;->l(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, La7/b;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lz5/a;

    .line 20
    .line 21
    new-instance v2, Lf6/e;

    .line 22
    .line 23
    invoke-direct {v2, p1}, Lf6/e;-><init>(Lz5/a;)V

    .line 24
    .line 25
    .line 26
    new-instance v3, Ld6/b;

    .line 27
    .line 28
    invoke-direct {v3}, Ld6/b;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v4, "clx"

    .line 32
    .line 33
    invoke-interface {p1, v4, v3}, Lz5/a;->b(Ljava/lang/String;Ld6/b;)Lz5/b;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const/4 v5, 0x0

    .line 38
    if-nez v4, :cond_2

    .line 39
    .line 40
    const-string v4, "FirebaseCrashlytics"

    .line 41
    .line 42
    const/4 v6, 0x3

    .line 43
    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-eqz v6, :cond_0

    .line 48
    .line 49
    const-string v6, "Could not register AnalyticsConnectorListener with Crashlytics origin."

    .line 50
    .line 51
    invoke-static {v4, v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    :cond_0
    const-string v6, "crash"

    .line 55
    .line 56
    invoke-interface {p1, v6, v3}, Lz5/a;->b(Ljava/lang/String;Ld6/b;)Lz5/b;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    const-string v6, "A new version of the Google Analytics for Firebase SDK is now available. For improved performance and compatibility with Crashlytics, please update to the latest version."

    .line 63
    .line 64
    invoke-static {v4, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .line 66
    .line 67
    :cond_1
    move-object v4, p1

    .line 68
    :cond_2
    if-eqz v4, :cond_4

    .line 69
    .line 70
    const-string p1, "Registered Firebase Analytics listener."

    .line 71
    .line 72
    invoke-virtual {v1, p1}, Lc5/y;->l(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance p1, Lf6/d;

    .line 76
    .line 77
    invoke-direct {p1}, Lf6/d;-><init>()V

    .line 78
    .line 79
    .line 80
    new-instance v1, Lf6/c;

    .line 81
    .line 82
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 83
    .line 84
    invoke-direct {v1, v2, v4}, Lf6/c;-><init>(Lf6/e;Ljava/util/concurrent/TimeUnit;)V

    .line 85
    .line 86
    .line 87
    monitor-enter v0

    .line 88
    :try_start_0
    iget-object v2, v0, Ld6/a;->c:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_3

    .line 99
    .line 100
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    check-cast v4, Lg6/a;

    .line 105
    .line 106
    invoke-virtual {p1, v4}, Lf6/d;->a(Lg6/a;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_3
    iput-object p1, v3, Ld6/b;->b:Lf6/b;

    .line 111
    .line 112
    iput-object v1, v3, Ld6/b;->a:Lf6/b;

    .line 113
    .line 114
    iput-object p1, v0, Ld6/a;->b:Lg6/b;

    .line 115
    .line 116
    iput-object v1, v0, Ld6/a;->a:Lf6/a;

    .line 117
    .line 118
    monitor-exit v0

    .line 119
    goto :goto_1

    .line 120
    :catchall_0
    move-exception p1

    .line 121
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    throw p1

    .line 123
    :cond_4
    const-string p1, "Could not register Firebase Analytics listener; a listener is already registered."

    .line 124
    .line 125
    invoke-virtual {v1, p1, v5}, Lc5/y;->F(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 126
    .line 127
    .line 128
    :goto_1
    return-void
.end method

.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroidx/camera/core/impl/p;->a:I

    iget-object v1, p0, Landroidx/camera/core/impl/p;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Landroidx/camera/core/impl/DeferrableSurface;

    invoke-static {v1, p1}, Landroidx/camera/core/impl/DeferrableSurface;->b(Landroidx/camera/core/impl/DeferrableSurface;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :goto_0
    check-cast v1, Landroidx/camera/extensions/ExtensionsManager;

    invoke-static {v1, p1}, Landroidx/camera/extensions/ExtensionsManager;->b(Landroidx/camera/extensions/ExtensionsManager;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lh5/k;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/p;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;

    .line 4
    .line 5
    sget v1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->s0:I

    .line 6
    .line 7
    const-string v1, "this$0"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "task"

    .line 13
    .line 14
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lh5/k;->m()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1}, Lh5/k;->i()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/lang/String;

    .line 29
    .line 30
    iput-object p1, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->K:Ljava/lang/String;

    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public final d(Lio/realm/g0;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/p;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/camera/core/impl/p;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 10
    .line 11
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->s:[Lda/m;

    .line 12
    .line 13
    const-string v0, "$serviceToBeInserted"

    .line 14
    .line 15
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v1}, Lio/realm/g0;->B(Lio/realm/s0;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :goto_0
    check-cast v1, Ljava/util/List;

    .line 23
    .line 24
    const-string v0, "$cityListDB"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    check-cast v1, Ljava/util/Collection;

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Lio/realm/g0;->E(Ljava/util/Collection;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public final onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/impl/p;->b:Ljava/lang/Object;

    check-cast v0, Lx9/p;

    invoke-static {v0, p1, p2}, Landroidx/fragment/app/FragmentKt;->a(Lx9/p;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/p;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lx9/l;

    .line 4
    .line 5
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;->g:[Lda/m;

    .line 6
    .line 7
    const-string v1, "$tmp0"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, p1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-void
.end method
