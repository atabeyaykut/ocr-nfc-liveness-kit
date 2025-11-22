.class public final Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker;
.super Landroidx/work/CoroutineWorker;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001Bk\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0006\u0012\u0008\u0008\u0001\u0010\t\u001a\u00020\u0006\u0012\u0008\u0008\u0001\u0010\n\u001a\u00020\u0006\u0012\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0008\u0001\u0010\r\u001a\u00020\u000b\u0012\u0008\u0008\u0001\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker;",
        "Landroidx/work/CoroutineWorker;",
        "Landroid/content/Context;",
        "appContext",
        "Landroidx/work/WorkerParameters;",
        "params",
        "Lud/d0;",
        "apiClientSession",
        "apiClientLogin",
        "apiClientRegister",
        "apiOTPClient",
        "",
        "appVersion",
        "appLanguage",
        "appMode",
        "Landroid/content/SharedPreferences$Editor;",
        "sharedPreferencesEditor",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;Lud/d0;Lud/d0;Lud/d0;Lud/d0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V",
        "common-worker_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lud/d0;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Lud/d0;Lud/d0;Lud/d0;Lud/d0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v5, p3

    .line 8
    .line 9
    move-object/from16 v7, p4

    .line 10
    .line 11
    move-object/from16 v9, p5

    .line 12
    .line 13
    move-object/from16 v11, p6

    .line 14
    .line 15
    move-object/from16 v13, p7

    .line 16
    .line 17
    move-object/from16 v15, p8

    .line 18
    .line 19
    move-object/from16 v17, p9

    .line 20
    .line 21
    move-object/from16 v19, p10

    .line 22
    .line 23
    const-string v2, "appContext"

    .line 24
    .line 25
    const-string v4, "params"

    .line 26
    .line 27
    const-string v6, "apiClientSession"

    .line 28
    .line 29
    const-string v8, "apiClientLogin"

    .line 30
    .line 31
    const-string v10, "apiClientRegister"

    .line 32
    .line 33
    const-string v12, "apiOTPClient"

    .line 34
    .line 35
    const-string v14, "appVersion"

    .line 36
    .line 37
    const-string v16, "appLanguage"

    .line 38
    .line 39
    const-string v18, "appMode"

    .line 40
    .line 41
    const-string v20, "sharedPreferencesEditor"

    .line 42
    .line 43
    invoke-static/range {v1 .. v20}, Landroidx/room/util/a;->h(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;Ljava/lang/String;Lud/d0;Ljava/lang/String;Lud/d0;Ljava/lang/String;Lud/d0;Ljava/lang/String;Lud/d0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-direct/range {p0 .. p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 47
    .line 48
    .line 49
    move-object/from16 v1, p3

    .line 50
    .line 51
    iput-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker;->a:Lud/d0;

    .line 52
    .line 53
    move-object/from16 v1, p7

    .line 54
    .line 55
    iput-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker;->b:Ljava/lang/String;

    .line 56
    .line 57
    move-object/from16 v1, p8

    .line 58
    .line 59
    iput-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker;->c:Ljava/lang/String;

    .line 60
    .line 61
    move-object/from16 v1, p9

    .line 62
    .line 63
    iput-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker;->d:Ljava/lang/String;

    .line 64
    .line 65
    return-void
.end method

.method public static final a(Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker;I)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string v0, "realm"

    .line 9
    .line 10
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string v0, "messageId"

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0, v1, v0}, Lio/realm/RealmQuery;->b(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;

    .line 33
    .line 34
    sget-object v0, Lyd/a;->a:Lyd/a$a;

    .line 35
    .line 36
    const-string v1, "message id "

    .line 37
    .line 38
    invoke-static {v1, p1}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const/4 v1, 0x0

    .line 43
    new-array v2, v1, [Ljava/lang/Object;

    .line 44
    .line 45
    invoke-virtual {v0, p1, v2}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v2, "id: "

    .line 51
    .line 52
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    if-eqz p0, :cond_0

    .line 57
    .line 58
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;->getMessageId()Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    move-object v3, v2

    .line 64
    :goto_0
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v3, " status: "

    .line 68
    .line 69
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    if-eqz p0, :cond_1

    .line 73
    .line 74
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;->isMessageShown()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    new-array v2, v1, [Ljava/lang/Object;

    .line 90
    .line 91
    invoke-virtual {v0, p1, v2}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    if-eqz p0, :cond_2

    .line 95
    .line 96
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;->isMessageShown()Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    :cond_2
    return v1
.end method


# virtual methods
.method public final doWork(Lp9/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/d<",
            "-",
            "Landroidx/work/ListenableWorker$Result;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker$a;

    iget v1, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker$a;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker$a;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker$a;

    invoke-direct {v0, p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker;Lp9/d;)V

    :goto_0
    iget-object p1, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker$a;->a:Ljava/lang/Object;

    sget-object v1, Lq9/a;->a:Lq9/a;

    iget v2, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker$a;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker$b;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker$b;-><init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker;Lp9/d;)V

    iput v3, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker$a;->c:I

    invoke-static {p1, v0}, Lb8/f;->t(Lx9/p;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const-string v0, "override suspend fun doW\u2026        }\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
