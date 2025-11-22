.class public final synthetic Landroidx/camera/camera2/interop/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements Landroidx/constraintlayout/core/state/Interpolator;
.implements Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
.implements Lc3/b$a;
.implements Lg6/b;
.implements Lh5/b;
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Lh5/f;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/camera/camera2/interop/c;->a:I

    iput-object p2, p0, Landroidx/camera/camera2/interop/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg6/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/interop/c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ld6/a;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, v0, Ld6/a;->b:Lg6/b;

    .line 7
    .line 8
    instance-of v1, v1, Lg6/c;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, v0, Ld6/a;->c:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v1, v0, Ld6/a;->b:Lg6/b;

    .line 18
    .line 19
    invoke-interface {v1, p1}, Lg6/b;->a(Lg6/a;)V

    .line 20
    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p1
.end method

.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroidx/camera/camera2/interop/c;->a:I

    iget-object v1, p0, Landroidx/camera/camera2/interop/c;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Landroidx/camera/camera2/interop/Camera2CameraControl;

    invoke-static {v1, p1}, Landroidx/camera/camera2/interop/Camera2CameraControl;->e(Landroidx/camera/camera2/interop/Camera2CameraControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :goto_0
    check-cast v1, Landroidx/camera/core/impl/LiveDataObservable;

    invoke-static {v1, p1}, Landroidx/camera/core/impl/LiveDataObservable;->d(Landroidx/camera/core/impl/LiveDataObservable;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lh5/k;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/interop/c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lh5/l;

    .line 4
    .line 5
    sget-object v1, Lh6/p0;->a:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    invoke-virtual {p1}, Lh5/k;->m()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lh5/k;->i()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Lh5/l;->d(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1}, Lh5/k;->h()Ljava/lang/Exception;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lh5/l;->c(Ljava/lang/Exception;)Z

    .line 29
    .line 30
    .line 31
    :goto_0
    const/4 p1, 0x0

    .line 32
    return-object p1
.end method

.method public final e(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/interop/c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/b;

    .line 4
    .line 5
    const-string v1, "this$0"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "e"

    .line 11
    .line 12
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 19
    .line 20
    .line 21
    sget-object v1, Lyd/a;->a:Lyd/a$a;

    .line 22
    .line 23
    const-string v3, "Text detection failed. "

    .line 24
    .line 25
    invoke-static {v3, p1}, Landroid/support/v4/media/a;->e(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-array v2, v2, [Ljava/lang/Object;

    .line 30
    .line 31
    invoke-virtual {v1, p1, v2}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/b;->a:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/b$a;

    .line 35
    .line 36
    invoke-interface {p1}, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/b$a;->a()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final execute()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/interop/c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, La3/o;

    .line 4
    .line 5
    iget-object v1, v0, La3/o;->b:Lb3/d;

    .line 6
    .line 7
    invoke-interface {v1}, Lb3/d;->K()Ljava/lang/Iterable;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lu2/s;

    .line 26
    .line 27
    iget-object v3, v0, La3/o;->c:La3/p;

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    invoke-interface {v3, v2, v4}, La3/p;->b(Lu2/s;I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    return-object v0
.end method

.method public final getInterpolation(F)F
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/interop/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Landroidx/constraintlayout/core/state/Transition;->f(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget v0, p0, Landroidx/camera/camera2/interop/c;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, -0x1

    .line 6
    const-string v4, "result"

    .line 7
    .line 8
    const-string v5, "this$0"

    .line 9
    .line 10
    iget-object v6, p0, Landroidx/camera/camera2/interop/c;->b:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :pswitch_0
    check-cast v6, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;

    .line 17
    .line 18
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 19
    .line 20
    sget v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->s0:I

    .line 21
    .line 22
    invoke-static {v6, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-ne v0, v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    const-string v0, "MRZ_RESULT"

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move-object p1, v2

    .line 48
    :goto_0
    sget-object v0, Lyd/a;->a:Lyd/a$a;

    .line 49
    .line 50
    const-string v3, "mrz data "

    .line 51
    .line 52
    invoke-static {v3, p1}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    new-array v1, v1, [Ljava/lang/Object;

    .line 57
    .line 58
    invoke-virtual {v0, v3, v1}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Lorg/json/JSONObject;

    .line 62
    .line 63
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v6}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->v()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->g:Landroid/webkit/WebView;

    .line 71
    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v3, "sendMrzData("

    .line 75
    .line 76
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const/16 v0, 0x29

    .line 83
    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 92
    .line 93
    .line 94
    :cond_1
    return-void

    .line 95
    :goto_1
    check-cast v6, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;

    .line 96
    .line 97
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 98
    .line 99
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->l:[Lda/m;

    .line 100
    .line 101
    invoke-static {v6, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-static {p1, v4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-ne v0, v3, :cond_8

    .line 112
    .line 113
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    if-eqz p1, :cond_2

    .line 118
    .line 119
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    goto :goto_2

    .line 124
    :cond_2
    move-object v0, v2

    .line 125
    :goto_2
    if-eqz p1, :cond_3

    .line 126
    .line 127
    const-string v3, "scenarioId"

    .line 128
    .line 129
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    goto :goto_3

    .line 134
    :cond_3
    move-object v3, v2

    .line 135
    :goto_3
    sget-object v4, Lyd/a;->a:Lyd/a$a;

    .line 136
    .line 137
    const-string v5, "Scenario "

    .line 138
    .line 139
    invoke-static {v5, v3}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    new-array v7, v1, [Ljava/lang/Object;

    .line 144
    .line 145
    invoke-virtual {v4, v5, v7}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    const-string v4, "true"

    .line 149
    .line 150
    invoke-static {v0, v4}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_6

    .line 155
    .line 156
    if-eqz v3, :cond_4

    .line 157
    .line 158
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-nez p1, :cond_5

    .line 163
    .line 164
    :cond_4
    const/4 v1, 0x1

    .line 165
    :cond_5
    if-nez v1, :cond_8

    .line 166
    .line 167
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {p1}, Lio/realm/a;->m()V

    .line 172
    .line 173
    .line 174
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 175
    .line 176
    invoke-virtual {p1, v0}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 185
    .line 186
    if-eqz v0, :cond_8

    .line 187
    .line 188
    new-instance v1, Lb3/o;

    .line 189
    .line 190
    invoke-direct {v1, v0, v3}, Lb3/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, v1}, Lio/realm/g0;->s(Lio/realm/g0$a;)V

    .line 194
    .line 195
    .line 196
    invoke-static {v6}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    const v0, 0x7f0a026a

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->navigate(I)V

    .line 204
    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_6
    if-eqz p1, :cond_7

    .line 208
    .line 209
    const-string v0, "errorMessage"

    .line 210
    .line 211
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    :cond_7
    invoke-virtual {v6, v2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->K(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    :cond_8
    :goto_4
    return-void

    .line 219
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public final onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/interop/c;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1, p2, p3}, Landroidx/core/view/inputmethod/InputConnectionCompat;->a(Landroid/view/View;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
