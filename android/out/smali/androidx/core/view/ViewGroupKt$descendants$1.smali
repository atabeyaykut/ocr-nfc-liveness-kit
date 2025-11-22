.class final Landroidx/core/view/ViewGroupKt$descendants$1;
.super Lr9/h;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/ViewGroupKt;->getDescendants(Landroid/view/ViewGroup;)Llc/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr9/h;",
        "Lx9/p<",
        "Llc/j<",
        "-",
        "Landroid/view/View;",
        ">;",
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
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\u0008\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"
    }
    d2 = {
        "Llc/j;",
        "Landroid/view/View;",
        "Ll9/m;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation runtime Lr9/e;
    c = "androidx.core.view.ViewGroupKt$descendants$1"
    f = "ViewGroup.kt"
    l = {
        0x77,
        0x79
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $this_descendants:Landroid/view/ViewGroup;

.field I$0:I

.field I$1:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lp9/d<",
            "-",
            "Landroidx/core/view/ViewGroupKt$descendants$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->$this_descendants:Landroid/view/ViewGroup;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lr9/h;-><init>(ILp9/d;)V

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

    new-instance v0, Landroidx/core/view/ViewGroupKt$descendants$1;

    iget-object v1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->$this_descendants:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, p2}, Landroidx/core/view/ViewGroupKt$descendants$1;-><init>(Landroid/view/ViewGroup;Lp9/d;)V

    iput-object p1, v0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llc/j;

    check-cast p2, Lp9/d;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/ViewGroupKt$descendants$1;->invoke(Llc/j;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Llc/j;Lp9/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llc/j<",
            "-",
            "Landroid/view/View;",
            ">;",
            "Lp9/d<",
            "-",
            "Ll9/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/ViewGroupKt$descendants$1;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    move-result-object p1

    check-cast p1, Landroidx/core/view/ViewGroupKt$descendants$1;

    sget-object p2, Ll9/m;->a:Ll9/m;

    invoke-virtual {p1, p2}, Landroidx/core/view/ViewGroupKt$descendants$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    sget-object v0, Lq9/a;->a:Lq9/a;

    .line 2
    .line 3
    iget v1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->label:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    if-eq v1, v3, :cond_1

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    iget v1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->I$1:I

    .line 14
    .line 15
    iget v4, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->I$0:I

    .line 16
    .line 17
    iget-object v5, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$1:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v5, Landroid/view/ViewGroup;

    .line 20
    .line 21
    iget-object v6, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v6, Llc/j;

    .line 24
    .line 25
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    move-object p1, p0

    .line 29
    move-object v8, v0

    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_1
    iget v1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->I$1:I

    .line 41
    .line 42
    iget v4, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->I$0:I

    .line 43
    .line 44
    iget-object v5, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$2:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v5, Landroid/view/View;

    .line 47
    .line 48
    iget-object v6, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$1:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v6, Landroid/view/ViewGroup;

    .line 51
    .line 52
    iget-object v7, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v7, Llc/j;

    .line 55
    .line 56
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    move-object p1, p0

    .line 60
    move-object v8, v0

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p1, Llc/j;

    .line 68
    .line 69
    iget-object v1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->$this_descendants:Landroid/view/ViewGroup;

    .line 70
    .line 71
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    const/4 v5, 0x0

    .line 76
    move-object v6, p0

    .line 77
    move-object v7, v0

    .line 78
    :goto_0
    if-ge v5, v4, :cond_7

    .line 79
    .line 80
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    const-string v9, "getChildAt(index)"

    .line 85
    .line 86
    invoke-static {v8, v9}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iput-object p1, v6, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    .line 90
    .line 91
    iput-object v1, v6, Landroidx/core/view/ViewGroupKt$descendants$1;->L$1:Ljava/lang/Object;

    .line 92
    .line 93
    iput-object v8, v6, Landroidx/core/view/ViewGroupKt$descendants$1;->L$2:Ljava/lang/Object;

    .line 94
    .line 95
    iput v5, v6, Landroidx/core/view/ViewGroupKt$descendants$1;->I$0:I

    .line 96
    .line 97
    iput v4, v6, Landroidx/core/view/ViewGroupKt$descendants$1;->I$1:I

    .line 98
    .line 99
    iput v3, v6, Landroidx/core/view/ViewGroupKt$descendants$1;->label:I

    .line 100
    .line 101
    invoke-virtual {p1, v8, v6}, Llc/j;->a(Landroid/view/View;Lp9/d;)V

    .line 102
    .line 103
    .line 104
    if-ne v0, v7, :cond_3

    .line 105
    .line 106
    return-object v7

    .line 107
    :cond_3
    move-object v10, v7

    .line 108
    move-object v7, p1

    .line 109
    move-object p1, v6

    .line 110
    move-object v6, v1

    .line 111
    move v1, v4

    .line 112
    move v4, v5

    .line 113
    move-object v5, v8

    .line 114
    move-object v8, v10

    .line 115
    :goto_1
    instance-of v9, v5, Landroid/view/ViewGroup;

    .line 116
    .line 117
    if-eqz v9, :cond_6

    .line 118
    .line 119
    check-cast v5, Landroid/view/ViewGroup;

    .line 120
    .line 121
    invoke-static {v5}, Landroidx/core/view/ViewGroupKt;->getDescendants(Landroid/view/ViewGroup;)Llc/h;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    iput-object v7, p1, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    .line 126
    .line 127
    iput-object v6, p1, Landroidx/core/view/ViewGroupKt$descendants$1;->L$1:Ljava/lang/Object;

    .line 128
    .line 129
    const/4 v9, 0x0

    .line 130
    iput-object v9, p1, Landroidx/core/view/ViewGroupKt$descendants$1;->L$2:Ljava/lang/Object;

    .line 131
    .line 132
    iput v4, p1, Landroidx/core/view/ViewGroupKt$descendants$1;->I$0:I

    .line 133
    .line 134
    iput v1, p1, Landroidx/core/view/ViewGroupKt$descendants$1;->I$1:I

    .line 135
    .line 136
    iput v2, p1, Landroidx/core/view/ViewGroupKt$descendants$1;->label:I

    .line 137
    .line 138
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    invoke-interface {v5}, Llc/h;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-virtual {v7, v5, p1}, Llc/j;->b(Ljava/util/Iterator;Lp9/d;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    if-ne v5, v0, :cond_4

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_4
    sget-object v5, Ll9/m;->a:Ll9/m;

    .line 153
    .line 154
    :goto_2
    if-ne v5, v8, :cond_5

    .line 155
    .line 156
    return-object v8

    .line 157
    :cond_5
    move-object v5, v6

    .line 158
    move-object v6, v7

    .line 159
    :goto_3
    move-object v7, v8

    .line 160
    move-object v10, v6

    .line 161
    move-object v6, p1

    .line 162
    move-object p1, v10

    .line 163
    move-object v11, v5

    .line 164
    move v5, v1

    .line 165
    move-object v1, v11

    .line 166
    goto :goto_4

    .line 167
    :cond_6
    move v5, v1

    .line 168
    move-object v1, v6

    .line 169
    move-object v6, p1

    .line 170
    move-object p1, v7

    .line 171
    move-object v7, v8

    .line 172
    :goto_4
    add-int/2addr v4, v3

    .line 173
    move v10, v5

    .line 174
    move v5, v4

    .line 175
    move v4, v10

    .line 176
    goto :goto_0

    .line 177
    :cond_7
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 178
    .line 179
    return-object p1
.end method
