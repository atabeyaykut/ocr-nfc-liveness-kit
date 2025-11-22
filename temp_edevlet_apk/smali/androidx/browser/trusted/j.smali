.class public final synthetic Landroidx/browser/trusted/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/browser/trusted/j;->a:I

    iput-object p2, p0, Landroidx/browser/trusted/j;->b:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/browser/trusted/j;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/browser/trusted/j;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "this$0"

    .line 5
    .line 6
    iget-object v3, p0, Landroidx/browser/trusted/j;->c:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v4, p0, Landroidx/browser/trusted/j;->b:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    goto :goto_1

    .line 14
    :pswitch_0
    check-cast v4, Lff/b;

    .line 15
    .line 16
    check-cast v3, Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {v4, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "$context"

    .line 22
    .line 23
    invoke-static {v3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, v3}, Lff/b;->a(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    iget-boolean v0, v4, Lff/b;->b:Z

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, v4, Lff/b;->d:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lff/e;

    .line 50
    .line 51
    invoke-interface {v2}, Lff/e;->a()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iput-boolean v1, v4, Lff/b;->b:Z

    .line 56
    .line 57
    :cond_1
    return-void

    .line 58
    :pswitch_1
    check-cast v4, Landroidx/lifecycle/DispatchQueue;

    .line 59
    .line 60
    check-cast v3, Ljava/lang/Runnable;

    .line 61
    .line 62
    invoke-static {v4, v3}, Landroidx/lifecycle/DispatchQueue;->a(Landroidx/lifecycle/DispatchQueue;Ljava/lang/Runnable;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_2
    check-cast v4, Landroidx/camera/camera2/interop/Camera2CameraControl;

    .line 67
    .line 68
    check-cast v3, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 69
    .line 70
    invoke-static {v4, v3}, Landroidx/camera/camera2/interop/Camera2CameraControl;->a(Landroidx/camera/camera2/interop/Camera2CameraControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :pswitch_3
    check-cast v4, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool;

    .line 75
    .line 76
    check-cast v3, Landroid/net/Uri;

    .line 77
    .line 78
    invoke-static {v4, v3}, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool;->a(Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool;Landroid/net/Uri;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :goto_1
    check-cast v4, Ljava/lang/String;

    .line 83
    .line 84
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;

    .line 85
    .line 86
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->s:[Lda/m;

    .line 87
    .line 88
    const-string v0, "$query"

    .line 89
    .line 90
    invoke-static {v4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-static {v3, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, v3, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->m:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {v4, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    iget-object v2, v3, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->e:Ll9/e;

    .line 103
    .line 104
    if-nez v0, :cond_2

    .line 105
    .line 106
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->I()V

    .line 107
    .line 108
    .line 109
    iput-object v4, v3, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->m:Ljava/lang/String;

    .line 110
    .line 111
    invoke-interface {v2}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Lng/k;

    .line 116
    .line 117
    invoke-virtual {v0, v4}, Lng/k;->d(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_2
    iget-boolean v0, v3, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->n:Z

    .line 122
    .line 123
    if-eqz v0, :cond_3

    .line 124
    .line 125
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->I()V

    .line 126
    .line 127
    .line 128
    iput-object v4, v3, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->m:Ljava/lang/String;

    .line 129
    .line 130
    invoke-interface {v2}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Lng/k;

    .line 135
    .line 136
    invoke-virtual {v0, v4}, Lng/k;->d(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iput-boolean v1, v3, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->n:Z

    .line 140
    .line 141
    :cond_3
    :goto_2
    return-void

    .line 142
    nop

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
