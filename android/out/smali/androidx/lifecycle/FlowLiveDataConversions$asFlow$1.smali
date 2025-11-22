.class final Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/FlowLiveDataConversions;->asFlow(Landroidx/lifecycle/LiveData;)Lkotlinx/coroutines/flow/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr9/i;",
        "Lx9/p<",
        "Lkotlinx/coroutines/flow/g<",
        "-TT;>;",
        "Lp9/d<",
        "-",
        "Ll9/m;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@"
    }
    d2 = {
        "T",
        "Lkotlinx/coroutines/flow/g;",
        "Ll9/m;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation

.annotation runtime Lr9/e;
    c = "androidx.lifecycle.FlowLiveDataConversions$asFlow$1"
    f = "FlowLiveData.kt"
    l = {
        0x61,
        0x65,
        0x66
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $this_asFlow:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LiveData;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;",
            "Lp9/d<",
            "-",
            "Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->$this_asFlow:Landroidx/lifecycle/LiveData;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method

.method public static synthetic a(Lpc/g;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->invokeSuspend$lambda-0(Lpc/g;Ljava/lang/Object;)V

    return-void
.end method

.method private static final invokeSuspend$lambda-0(Lpc/g;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lpc/y;->A(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lp9/d;)Lp9/d;
    .locals 2
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

    new-instance v0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;

    iget-object v1, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->$this_asFlow:Landroidx/lifecycle/LiveData;

    invoke-direct {v0, v1, p2}, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;-><init>(Landroidx/lifecycle/LiveData;Lp9/d;)V

    iput-object p1, v0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/g;

    check-cast p2, Lp9/d;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->invoke(Lkotlinx/coroutines/flow/g;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/g;Lp9/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/g<",
            "-TT;>;",
            "Lp9/d<",
            "-",
            "Ll9/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;

    sget-object p2, Ll9/m;->a:Ll9/m;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    sget-object v0, Lq9/a;->a:Lq9/a;

    .line 2
    .line 3
    iget v1, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->label:I

    .line 4
    .line 5
    sget-object v2, Lnc/t0;->a:Lnc/t0;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x3

    .line 9
    const/4 v5, 0x2

    .line 10
    const/4 v6, 0x1

    .line 11
    const/4 v7, 0x0

    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    if-eq v1, v6, :cond_2

    .line 15
    .line 16
    if-eq v1, v5, :cond_1

    .line 17
    .line 18
    if-ne v1, v4, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$2:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Lpc/i;

    .line 23
    .line 24
    iget-object v6, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$1:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v6, Landroidx/lifecycle/Observer;

    .line 27
    .line 28
    iget-object v8, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$0:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v8, Lkotlinx/coroutines/flow/g;

    .line 31
    .line 32
    :try_start_0
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    goto/16 :goto_1

    .line 36
    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 40
    .line 41
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_1
    iget-object v1, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$2:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Lpc/i;

    .line 48
    .line 49
    iget-object v6, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$1:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v6, Landroidx/lifecycle/Observer;

    .line 52
    .line 53
    iget-object v8, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$0:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v8, Lkotlinx/coroutines/flow/g;

    .line 56
    .line 57
    :try_start_1
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .line 59
    .line 60
    move-object v9, v8

    .line 61
    move-object v8, v6

    .line 62
    move-object v6, v2

    .line 63
    move-object v2, v1

    .line 64
    move-object v1, v0

    .line 65
    move-object v0, p0

    .line 66
    goto/16 :goto_3

    .line 67
    .line 68
    :catchall_0
    move-exception p1

    .line 69
    goto/16 :goto_4

    .line 70
    .line 71
    :cond_2
    iget-object v1, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$2:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v1, Landroidx/lifecycle/Observer;

    .line 74
    .line 75
    iget-object v6, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$1:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v6, Lpc/g;

    .line 78
    .line 79
    iget-object v8, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$0:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v8, Lkotlinx/coroutines/flow/g;

    .line 82
    .line 83
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$0:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast p1, Lkotlinx/coroutines/flow/g;

    .line 93
    .line 94
    const/4 v1, -0x1

    .line 95
    const/4 v8, 0x6

    .line 96
    invoke-static {v1, v7, v8}, Lb8/f;->e(ILpc/f;I)Lpc/a;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    new-instance v8, Landroidx/lifecycle/c;

    .line 101
    .line 102
    invoke-direct {v8, v1}, Landroidx/lifecycle/c;-><init>(Lpc/a;)V

    .line 103
    .line 104
    .line 105
    sget-object v9, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 106
    .line 107
    sget-object v9, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 108
    .line 109
    invoke-virtual {v9}, Lnc/k1;->d()Lnc/k1;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    new-instance v10, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1$1;

    .line 114
    .line 115
    iget-object v11, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->$this_asFlow:Landroidx/lifecycle/LiveData;

    .line 116
    .line 117
    invoke-direct {v10, v11, v8, v7}, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1$1;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;Lp9/d;)V

    .line 118
    .line 119
    .line 120
    iput-object p1, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$0:Ljava/lang/Object;

    .line 121
    .line 122
    iput-object v1, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$1:Ljava/lang/Object;

    .line 123
    .line 124
    iput-object v8, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$2:Ljava/lang/Object;

    .line 125
    .line 126
    iput v6, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->label:I

    .line 127
    .line 128
    invoke-static {v9, v10, p0}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    if-ne v6, v0, :cond_4

    .line 133
    .line 134
    return-object v0

    .line 135
    :cond_4
    move-object v6, v1

    .line 136
    move-object v1, v8

    .line 137
    move-object v8, p1

    .line 138
    :goto_0
    :try_start_2
    invoke-interface {v6}, Lpc/u;->iterator()Lpc/i;

    .line 139
    .line 140
    .line 141
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 142
    move-object v6, v1

    .line 143
    move-object v1, p1

    .line 144
    :goto_1
    move-object p1, p0

    .line 145
    :goto_2
    :try_start_3
    iput-object v8, p1, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$0:Ljava/lang/Object;

    .line 146
    .line 147
    iput-object v6, p1, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$1:Ljava/lang/Object;

    .line 148
    .line 149
    iput-object v1, p1, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$2:Ljava/lang/Object;

    .line 150
    .line 151
    iput v5, p1, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->label:I

    .line 152
    .line 153
    invoke-interface {v1, p1}, Lpc/i;->a(Lp9/d;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 157
    if-ne v9, v0, :cond_5

    .line 158
    .line 159
    return-object v0

    .line 160
    :cond_5
    move-object v12, v0

    .line 161
    move-object v0, p1

    .line 162
    move-object p1, v9

    .line 163
    move-object v9, v8

    .line 164
    move-object v8, v6

    .line 165
    move-object v6, v2

    .line 166
    move-object v2, v1

    .line 167
    move-object v1, v12

    .line 168
    :goto_3
    :try_start_4
    check-cast p1, Ljava/lang/Boolean;

    .line 169
    .line 170
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    if-eqz p1, :cond_7

    .line 175
    .line 176
    invoke-interface {v2}, Lpc/i;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    iput-object v9, v0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$0:Ljava/lang/Object;

    .line 181
    .line 182
    iput-object v8, v0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$1:Ljava/lang/Object;

    .line 183
    .line 184
    iput-object v2, v0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$2:Ljava/lang/Object;

    .line 185
    .line 186
    iput v4, v0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->label:I

    .line 187
    .line 188
    invoke-interface {v9, p1, v0}, Lkotlinx/coroutines/flow/g;->emit(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 192
    if-ne p1, v1, :cond_6

    .line 193
    .line 194
    return-object v1

    .line 195
    :cond_6
    move-object p1, v0

    .line 196
    move-object v0, v1

    .line 197
    move-object v1, v2

    .line 198
    move-object v2, v6

    .line 199
    move-object v6, v8

    .line 200
    move-object v8, v9

    .line 201
    goto :goto_2

    .line 202
    :cond_7
    sget-object p1, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 203
    .line 204
    sget-object p1, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 205
    .line 206
    invoke-virtual {p1}, Lnc/k1;->d()Lnc/k1;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    new-instance v1, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1$2;

    .line 211
    .line 212
    iget-object v0, v0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->$this_asFlow:Landroidx/lifecycle/LiveData;

    .line 213
    .line 214
    invoke-direct {v1, v0, v8, v7}, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1$2;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;Lp9/d;)V

    .line 215
    .line 216
    .line 217
    invoke-static {v6, p1, v3, v1, v5}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 218
    .line 219
    .line 220
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 221
    .line 222
    return-object p1

    .line 223
    :catchall_1
    move-exception p1

    .line 224
    move-object v2, v6

    .line 225
    move-object v6, v8

    .line 226
    move-object v12, v0

    .line 227
    move-object v0, p1

    .line 228
    move-object p1, v12

    .line 229
    goto :goto_5

    .line 230
    :catchall_2
    move-exception v0

    .line 231
    goto :goto_5

    .line 232
    :catchall_3
    move-exception p1

    .line 233
    move-object v6, v1

    .line 234
    :goto_4
    move-object v0, p1

    .line 235
    move-object p1, p0

    .line 236
    :goto_5
    sget-object v1, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 237
    .line 238
    sget-object v1, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 239
    .line 240
    invoke-virtual {v1}, Lnc/k1;->d()Lnc/k1;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    new-instance v4, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1$2;

    .line 245
    .line 246
    iget-object p1, p1, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->$this_asFlow:Landroidx/lifecycle/LiveData;

    .line 247
    .line 248
    invoke-direct {v4, p1, v6, v7}, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1$2;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;Lp9/d;)V

    .line 249
    .line 250
    .line 251
    invoke-static {v2, v1, v3, v4, v5}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 252
    .line 253
    .line 254
    throw v0
.end method
