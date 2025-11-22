.class public final Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker$b$a;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr9/i;",
        "Lx9/p<",
        "Lnc/a0;",
        "Lp9/d<",
        "-",
        "Landroidx/work/ListenableWorker$Result;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.common.worker.favorite.UnfavoriteOperationWorker$doWork$2$1"
    f = "UnfavoriteOperationWorker.kt"
    l = {
        0x36
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker$b$a;->b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lp9/d;)Lp9/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lp9/d<",
            "*>;)",
            "Lp9/d<",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker$b$a;

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker$b$a;->b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker;

    invoke-direct {p1, v0, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker$b$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker;Lp9/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lnc/a0;

    .line 2
    .line 3
    check-cast p2, Lp9/d;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker$b$a;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker$b$a;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker$b$a;->b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker;

    .line 2
    .line 3
    sget-object v1, Lq9/a;->a:Lq9/a;

    .line 4
    .line 5
    iget v2, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker$b$a;->a:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const-string v4, "REMOVE"

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    if-ne v2, v3, :cond_0

    .line 14
    .line 15
    :try_start_0
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :try_start_1
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v2, "serviceCode"

    .line 35
    .line 36
    const/4 v6, -0x1

    .line 37
    invoke-virtual {p1, v2, v6}, Landroidx/work/Data;->getInt(Ljava/lang/String;I)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eq p1, v6, :cond_5

    .line 42
    .line 43
    iget-object v2, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker;->a:Lud/d0;

    .line 44
    .line 45
    const-class v6, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListAPI;

    .line 46
    .line 47
    invoke-virtual {v2, v6}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const-string v6, "apiClientSession.create(\u2026rviceListAPI::class.java)"

    .line 52
    .line 53
    invoke-static {v2, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    move-object v7, v2

    .line 57
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListAPI;

    .line 58
    .line 59
    const-string v8, "kaldir"

    .line 60
    .line 61
    iget-object v10, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker;->b:Ljava/lang/String;

    .line 62
    .line 63
    const-string v11, "android"

    .line 64
    .line 65
    iget-object v12, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker;->c:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v13, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker;->d:Ljava/lang/String;

    .line 68
    .line 69
    move v9, p1

    .line 70
    invoke-interface/range {v7 .. v13}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListAPI;->makeFavoriteOperation(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    .line 71
    .line 72
    .line 73
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    :try_start_2
    invoke-interface {v0}, Lud/b;->execute()Lud/c0;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 79
    .line 80
    const-string v6, "response"

    .line 81
    .line 82
    invoke-static {v0, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-direct {v2, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 95
    .line 96
    .line 97
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 98
    .line 99
    invoke-direct {v2, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    :goto_0
    instance-of v0, v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 103
    .line 104
    if-eqz v0, :cond_3

    .line 105
    .line 106
    sget-object v0, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 107
    .line 108
    sget-object v0, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 109
    .line 110
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker$b$a$a;

    .line 111
    .line 112
    const/4 v6, 0x0

    .line 113
    invoke-direct {v2, p1, v6}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker$b$a$a;-><init>(ILp9/d;)V

    .line 114
    .line 115
    .line 116
    iput v3, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker$b$a;->a:I

    .line 117
    .line 118
    invoke-static {v0, v2, p0}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-ne p1, v1, :cond_2

    .line 123
    .line 124
    return-object v1

    .line 125
    :cond_2
    :goto_1
    check-cast p1, Landroidx/work/ListenableWorker$Result;

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_3
    instance-of p1, v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 129
    .line 130
    if-eqz p1, :cond_4

    .line 131
    .line 132
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    new-instance v0, Lpe/e;

    .line 137
    .line 138
    invoke-direct {v0, v5, v4}, Lpe/e;-><init>(ZLjava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :goto_2
    invoke-virtual {p1, v0}, Lqd/b;->i(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    goto :goto_3

    .line 149
    :cond_4
    new-instance p1, Lj7/p;

    .line 150
    .line 151
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 152
    .line 153
    .line 154
    throw p1

    .line 155
    :cond_5
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    new-instance v0, Lpe/e;

    .line 160
    .line 161
    invoke-direct {v0, v5, v4}, Lpe/e;-><init>(ZLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :catch_1
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    new-instance v0, Lpe/e;

    .line 170
    .line 171
    invoke-direct {v0, v5, v4}, Lpe/e;-><init>(ZLjava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v0}, Lqd/b;->i(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    :goto_3
    const-string v0, "try {\n                va\u2026t.failure()\n            }"

    .line 182
    .line 183
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    return-object p1
.end method
