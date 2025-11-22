.class public final Lme/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lle/a;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lme/b;->a:I

    iput-object p2, p0, Lme/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroidx/work/WorkerParameters;Lud/d0;Lud/d0;Lud/d0;Lud/d0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/work/CoroutineWorker;
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    iget v1, v0, Lme/b;->a:I

    .line 3
    .line 4
    iget-object v2, v0, Lme/b;->b:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :pswitch_0
    check-cast v2, Lve/a;

    .line 12
    .line 13
    iget-object v1, v2, Lve/a;->a:Lk9/a;

    .line 14
    .line 15
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    move-object v12, v1

    .line 20
    check-cast v12, Landroid/content/SharedPreferences$Editor;

    .line 21
    .line 22
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker;

    .line 23
    .line 24
    move-object v2, v1

    .line 25
    move-object v3, p1

    .line 26
    move-object v4, p2

    .line 27
    move-object/from16 v5, p3

    .line 28
    .line 29
    move-object/from16 v6, p4

    .line 30
    .line 31
    move-object/from16 v7, p5

    .line 32
    .line 33
    move-object/from16 v8, p6

    .line 34
    .line 35
    move-object/from16 v9, p7

    .line 36
    .line 37
    move-object/from16 v10, p8

    .line 38
    .line 39
    move-object/from16 v11, p9

    .line 40
    .line 41
    invoke-direct/range {v2 .. v12}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Lud/d0;Lud/d0;Lud/d0;Lud/d0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 42
    .line 43
    .line 44
    return-object v1

    .line 45
    :pswitch_1
    check-cast v2, Lqe/c;

    .line 46
    .line 47
    iget-object v1, v2, Lqe/c;->a:Lk9/a;

    .line 48
    .line 49
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    move-object v12, v1

    .line 54
    check-cast v12, Landroid/content/SharedPreferences$Editor;

    .line 55
    .line 56
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker;

    .line 57
    .line 58
    move-object v2, v1

    .line 59
    move-object v3, p1

    .line 60
    move-object v4, p2

    .line 61
    move-object/from16 v5, p3

    .line 62
    .line 63
    move-object/from16 v6, p4

    .line 64
    .line 65
    move-object/from16 v7, p5

    .line 66
    .line 67
    move-object/from16 v8, p6

    .line 68
    .line 69
    move-object/from16 v9, p7

    .line 70
    .line 71
    move-object/from16 v10, p8

    .line 72
    .line 73
    move-object/from16 v11, p9

    .line 74
    .line 75
    invoke-direct/range {v2 .. v12}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Lud/d0;Lud/d0;Lud/d0;Lud/d0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 76
    .line 77
    .line 78
    return-object v1

    .line 79
    :pswitch_2
    check-cast v2, Lme/a;

    .line 80
    .line 81
    iget-object v1, v2, Lme/a;->a:Lk9/a;

    .line 82
    .line 83
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    move-object v12, v1

    .line 88
    check-cast v12, Landroid/content/SharedPreferences$Editor;

    .line 89
    .line 90
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyLoginWorker;

    .line 91
    .line 92
    move-object v2, v1

    .line 93
    move-object v3, p1

    .line 94
    move-object v4, p2

    .line 95
    move-object/from16 v5, p3

    .line 96
    .line 97
    move-object/from16 v6, p4

    .line 98
    .line 99
    move-object/from16 v7, p5

    .line 100
    .line 101
    move-object/from16 v8, p6

    .line 102
    .line 103
    move-object/from16 v9, p7

    .line 104
    .line 105
    move-object/from16 v10, p8

    .line 106
    .line 107
    move-object/from16 v11, p9

    .line 108
    .line 109
    invoke-direct/range {v2 .. v12}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyLoginWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Lud/d0;Lud/d0;Lud/d0;Lud/d0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 110
    .line 111
    .line 112
    return-object v1

    .line 113
    :goto_0
    check-cast v2, Lye/c;

    .line 114
    .line 115
    iget-object v1, v2, Lye/c;->a:Lk9/a;

    .line 116
    .line 117
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    move-object v12, v1

    .line 122
    check-cast v12, Landroid/content/SharedPreferences$Editor;

    .line 123
    .line 124
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateModuleCheckWorker;

    .line 125
    .line 126
    move-object v2, v1

    .line 127
    move-object v3, p1

    .line 128
    move-object v4, p2

    .line 129
    move-object/from16 v5, p3

    .line 130
    .line 131
    move-object/from16 v6, p4

    .line 132
    .line 133
    move-object/from16 v7, p5

    .line 134
    .line 135
    move-object/from16 v8, p6

    .line 136
    .line 137
    move-object/from16 v9, p7

    .line 138
    .line 139
    move-object/from16 v10, p8

    .line 140
    .line 141
    move-object/from16 v11, p9

    .line 142
    .line 143
    invoke-direct/range {v2 .. v12}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateModuleCheckWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Lud/d0;Lud/d0;Lud/d0;Lud/d0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 144
    .line 145
    .line 146
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
