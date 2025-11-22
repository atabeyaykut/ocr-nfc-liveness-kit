.class public final synthetic Lt1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Lh5/b;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lt1/e;->a:I

    iput-object p2, p0, Lt1/e;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lh5/k;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p1, p0, Lt1/e;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Ljava/util/concurrent/CountDownLatch;

    .line 4
    .line 5
    sget-object v0, Lh6/p0;->a:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Lt1/e;->a:I

    .line 2
    .line 3
    const-string v1, "this$0"

    .line 4
    .line 5
    iget-object v2, p0, Lt1/e;->b:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_3

    .line 13
    :pswitch_0
    check-cast v2, Lt1/g;

    .line 14
    .line 15
    check-cast p1, Ljava/util/Map;

    .line 16
    .line 17
    sget v0, Lt1/g;->j:I

    .line 18
    .line 19
    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/Iterable;

    .line 27
    .line 28
    instance-of v0, p1, Ljava/util/Collection;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    move-object v0, p1

    .line 33
    check-cast v0, Ljava/util/Collection;

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Ljava/lang/Boolean;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    :goto_0
    const/4 v3, 0x1

    .line 66
    :goto_1
    const-string p1, "ImagePicker"

    .line 67
    .line 68
    if-eqz v3, :cond_3

    .line 69
    .line 70
    const-string v0, "Write External permission granted"

    .line 71
    .line 72
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Lt1/g;->B()V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    const-string v0, "Permission not granted"

    .line 80
    .line 81
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    iget-object p1, v2, Lt1/g;->h:Lt1/l;

    .line 85
    .line 86
    if-eqz p1, :cond_4

    .line 87
    .line 88
    invoke-interface {p1}, Lt1/l;->cancel()V

    .line 89
    .line 90
    .line 91
    :goto_2
    return-void

    .line 92
    :cond_4
    const-string p1, "interactionListener"

    .line 93
    .line 94
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const/4 p1, 0x0

    .line 98
    throw p1

    .line 99
    :goto_3
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;

    .line 100
    .line 101
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 102
    .line 103
    sget v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->s0:I

    .line 104
    .line 105
    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string v0, "result"

    .line 109
    .line 110
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    const/4 v1, -0x1

    .line 118
    if-ne v0, v1, :cond_6

    .line 119
    .line 120
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    if-eqz p1, :cond_a

    .line 125
    .line 126
    const-string v0, "isLoadResultUrl"

    .line 127
    .line 128
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    const-string v1, "shouldLoadReturn"

    .line 133
    .line 134
    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    iput-boolean v1, v2, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->H:Z

    .line 139
    .line 140
    iput-boolean v4, v2, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->G:Z

    .line 141
    .line 142
    if-eqz v0, :cond_5

    .line 143
    .line 144
    const-string v0, "url"

    .line 145
    .line 146
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    if-eqz p1, :cond_a

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_5
    iget-object p1, v2, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->n:Ljava/lang/String;

    .line 154
    .line 155
    if-eqz p1, :cond_a

    .line 156
    .line 157
    :goto_4
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->v()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->g:Landroid/webkit/WebView;

    .line 162
    .line 163
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    goto :goto_7

    .line 167
    :cond_6
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->E()V

    .line 168
    .line 169
    .line 170
    iget-boolean p1, v2, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->C:Z

    .line 171
    .line 172
    if-eqz p1, :cond_9

    .line 173
    .line 174
    iget-object p1, v2, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->n:Ljava/lang/String;

    .line 175
    .line 176
    if-eqz p1, :cond_8

    .line 177
    .line 178
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    if-nez p1, :cond_7

    .line 183
    .line 184
    goto :goto_5

    .line 185
    :cond_7
    const/4 p1, 0x0

    .line 186
    goto :goto_6

    .line 187
    :cond_8
    :goto_5
    const/4 p1, 0x1

    .line 188
    :goto_6
    if-nez p1, :cond_a

    .line 189
    .line 190
    iget-object p1, v2, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->n:Ljava/lang/String;

    .line 191
    .line 192
    if-eqz p1, :cond_a

    .line 193
    .line 194
    iput-boolean v3, v2, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->H:Z

    .line 195
    .line 196
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->v()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->g:Landroid/webkit/WebView;

    .line 201
    .line 202
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iput-boolean v4, v2, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->G:Z

    .line 206
    .line 207
    goto :goto_7

    .line 208
    :cond_9
    iput-boolean v3, v2, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->H:Z

    .line 209
    .line 210
    :cond_a
    :goto_7
    return-void

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
