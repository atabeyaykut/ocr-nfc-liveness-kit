.class public final Ltr/gov/turkiye/edevlet/kapisi/NotificationClickListener;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/NotificationClickListener;",
        "Landroid/content/BroadcastReceiver;",
        "<init>",
        "()V",
        "app_v21Release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    new-array v0, v0, [Ll9/g;

    .line 3
    .line 4
    const-string v1, "tidValue"

    .line 5
    .line 6
    new-instance v2, Ll9/g;

    .line 7
    .line 8
    invoke-direct {v2, v1, p1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    aput-object v2, v0, p1

    .line 13
    .line 14
    new-instance v1, Landroidx/work/Data$Builder;

    .line 15
    .line 16
    invoke-direct {v1}, Landroidx/work/Data$Builder;-><init>()V

    .line 17
    .line 18
    .line 19
    aget-object p1, v0, p1

    .line 20
    .line 21
    iget-object v0, p1, Ll9/g;->a:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Ljava/lang/String;

    .line 24
    .line 25
    iget-object p1, p1, Ll9/g;->b:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {v1, v0, p1}, Landroidx/work/Data$Builder;->put(Ljava/lang/String;Ljava/lang/Object;)Landroidx/work/Data$Builder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v0, "dataBuilder.build()"

    .line 35
    .line 36
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 40
    .line 41
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/DeleteDeviceWorker;

    .line 42
    .line 43
    invoke-direct {v0, v1}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Landroidx/work/WorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string v0, "OneTimeWorkRequestBuilde\u2026\n                .build()"

    .line 57
    .line 58
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    check-cast p1, Landroidx/work/OneTimeWorkRequest;

    .line 62
    .line 63
    invoke-static {p0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0, p1}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    :catch_0
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21

    move-object/from16 v0, p1

    :try_start_0
    invoke-static/range {p2 .. p2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const-string v4, "notification"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    const-string v5, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/app/NotificationManager;

    const-string v5, "settings"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v7, "MainActivity"

    invoke-virtual {v0, v7, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    if-eqz v5, :cond_1

    const-string v8, "did"

    invoke-interface {v5, v8, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_1
    move-object v8, v3

    :goto_1
    if-eqz v5, :cond_2

    const-string v9, "esk"

    invoke-interface {v5, v9, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v3

    :goto_2
    if-eqz v7, :cond_3

    const-string v9, "cookie"

    invoke-interface {v7, v9, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_3
    move-object v7, v3

    :goto_3
    if-eqz v2, :cond_4

    const-string v9, "uk"

    invoke-virtual {v2, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_4
    move-object v9, v3

    :goto_4
    if-eqz v2, :cond_5

    const-string v10, "tid"

    invoke-virtual {v2, v10}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_5
    move-object v10, v3

    :goto_5
    if-eqz v2, :cond_6

    const-string v11, "nid"

    invoke-virtual {v2, v11}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_6

    :cond_6
    move-object v2, v3

    :goto_6
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    goto :goto_7

    :cond_7
    const/4 v5, 0x0

    goto :goto_8

    :cond_8
    :goto_7
    const/4 v5, 0x1

    :goto_8
    if-nez v5, :cond_12

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_9

    goto :goto_9

    :cond_9
    const/4 v5, 0x0

    goto :goto_a

    :cond_a
    :goto_9
    const/4 v5, 0x1

    :goto_a
    if-eqz v5, :cond_b

    move-object/from16 v20, v2

    move-object/from16 v19, v4

    goto/16 :goto_11

    :cond_b
    if-eqz v9, :cond_d

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_c

    goto :goto_b

    :cond_c
    const/4 v5, 0x0

    goto :goto_c

    :cond_d
    :goto_b
    const/4 v5, 0x1

    :goto_c
    if-nez v5, :cond_11

    invoke-static {v0, v9}, Lb0/a;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljf/d;

    invoke-direct {v9}, Ljf/d;-><init>()V

    invoke-virtual {v9, v5, v3}, Ljf/d;->a(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "tr.gov.turkiye.edevlet.kapisi.APPROVE_ACTION"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, "OneTimeWorkRequestBuilde\u2026                 .build()"

    const-class v13, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker;

    const-string v14, "dataBuilder.build()"

    const-string v15, "approvalTypeValue"

    const-string v9, "didValue"

    const/16 v16, 0x4

    const-string v11, "actionValue"

    const/16 v17, 0x3

    const-string v6, "tokenValue"

    const/16 v18, 0x2

    move-object/from16 v19, v4

    const-string v4, "tidValue"

    move-object/from16 v20, v2

    const-string v2, "otpValue"

    const/4 v0, 0x6

    if-eqz v5, :cond_f

    :try_start_1
    new-array v1, v0, [Ll9/g;

    .line 1
    new-instance v5, Ll9/g;

    invoke-direct {v5, v2, v3}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v5, v1, v2

    new-instance v2, Ll9/g;

    invoke-direct {v2, v4, v10}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Ll9/g;

    invoke-direct {v2, v6, v7}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v18

    const-string v2, "1"

    new-instance v3, Ll9/g;

    invoke-direct {v3, v11, v2}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v17

    new-instance v2, Ll9/g;

    invoke-direct {v2, v9, v8}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v16

    const/4 v2, 0x1

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3
    new-instance v3, Ll9/g;

    invoke-direct {v3, v15, v2}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x5

    aput-object v3, v1, v2

    .line 4
    new-instance v2, Landroidx/work/Data$Builder;

    invoke-direct {v2}, Landroidx/work/Data$Builder;-><init>()V

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v0, :cond_e

    aget-object v3, v1, v6

    add-int/lit8 v6, v6, 0x1

    .line 5
    iget-object v4, v3, Ll9/g;->a:Ljava/lang/Object;

    .line 6
    check-cast v4, Ljava/lang/String;

    .line 7
    iget-object v3, v3, Ll9/g;->b:Ljava/lang/Object;

    .line 8
    invoke-virtual {v2, v4, v3}, Landroidx/work/Data$Builder;->put(Ljava/lang/String;Ljava/lang/Object;)Landroidx/work/Data$Builder;

    goto :goto_d

    :cond_e
    invoke-virtual {v2}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object v0

    invoke-static {v0, v14}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroidx/work/OneTimeWorkRequest$Builder;

    invoke-direct {v1, v13}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroidx/work/WorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    move-result-object v0

    check-cast v0, Landroidx/work/OneTimeWorkRequest$Builder;

    invoke-virtual {v0}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v0

    invoke-static {v0, v12}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_e
    check-cast v0, Landroidx/work/OneTimeWorkRequest;

    invoke-static/range {p1 .. p1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v1

    goto :goto_10

    :cond_f
    const-string v5, "tr.gov.turkiye.edevlet.kapisi.CANCEL_ACTION"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    new-array v1, v0, [Ll9/g;

    .line 9
    new-instance v5, Ll9/g;

    invoke-direct {v5, v2, v3}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v5, v1, v2

    new-instance v3, Ll9/g;

    invoke-direct {v3, v4, v10}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-instance v3, Ll9/g;

    invoke-direct {v3, v6, v7}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v18

    const-string v3, "0"

    new-instance v4, Ll9/g;

    invoke-direct {v4, v11, v3}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v17

    new-instance v3, Ll9/g;

    invoke-direct {v3, v9, v8}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v16

    const/4 v3, 0x1

    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 11
    new-instance v4, Ll9/g;

    invoke-direct {v4, v15, v3}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x5

    aput-object v4, v1, v3

    .line 12
    new-instance v3, Landroidx/work/Data$Builder;

    invoke-direct {v3}, Landroidx/work/Data$Builder;-><init>()V

    const/4 v6, 0x0

    :goto_f
    if-ge v6, v0, :cond_10

    aget-object v2, v1, v6

    add-int/lit8 v6, v6, 0x1

    .line 13
    iget-object v4, v2, Ll9/g;->a:Ljava/lang/Object;

    .line 14
    check-cast v4, Ljava/lang/String;

    .line 15
    iget-object v2, v2, Ll9/g;->b:Ljava/lang/Object;

    .line 16
    invoke-virtual {v3, v4, v2}, Landroidx/work/Data$Builder;->put(Ljava/lang/String;Ljava/lang/Object;)Landroidx/work/Data$Builder;

    goto :goto_f

    :cond_10
    invoke-virtual {v3}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object v0

    invoke-static {v0, v14}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroidx/work/OneTimeWorkRequest$Builder;

    invoke-direct {v1, v13}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroidx/work/WorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    move-result-object v0

    check-cast v0, Landroidx/work/OneTimeWorkRequest$Builder;

    invoke-virtual {v0}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v0

    invoke-static {v0, v12}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_e

    :goto_10
    invoke-virtual {v1, v0}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;

    goto :goto_12

    :cond_11
    move-object/from16 v20, v2

    move-object/from16 v19, v4

    goto :goto_12

    :cond_12
    move-object/from16 v20, v2

    move-object/from16 v19, v4

    move-object/from16 v0, p1

    :goto_11
    invoke-static {v0, v10}, Ltr/gov/turkiye/edevlet/kapisi/NotificationClickListener;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_13
    :goto_12
    if-eqz v20, :cond_14

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object/from16 v4, v19

    invoke-virtual {v4, v0}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_13

    :cond_14
    move-object/from16 v4, v19

    invoke-virtual {v4}, Landroid/app/NotificationManager;->cancelAll()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_13
    return-void
.end method
