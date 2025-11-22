.class public final Ltg/b;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lcom/airbnb/epoxy/p;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/services/firm/FirmCategoryListFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/services/firm/FirmCategoryListFragment;)V
    .locals 0

    iput-object p1, p0, Ltg/b;->a:Ltr/gov/turkiye/edevlet/kapisi/services/firm/FirmCategoryListFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    check-cast p1, Lcom/airbnb/epoxy/p;

    .line 2
    .line 3
    const-string v0, "$this$withModels"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x6

    .line 9
    new-array v1, v0, [Ltg/c;

    .line 10
    .line 11
    new-instance v2, Ltg/c;

    .line 12
    .line 13
    const v3, 0x7f1300ce

    .line 14
    .line 15
    .line 16
    const v4, 0x7f0800ad

    .line 17
    .line 18
    .line 19
    const/4 v5, 0x2

    .line 20
    invoke-direct {v2, v5, v3, v5, v4}, Ltg/c;-><init>(IIII)V

    .line 21
    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    aput-object v2, v1, v3

    .line 25
    .line 26
    new-instance v2, Ltg/c;

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    const v6, 0x7f1300d0

    .line 30
    .line 31
    .line 32
    const v7, 0x7f0800af

    .line 33
    .line 34
    .line 35
    invoke-direct {v2, v4, v6, v4, v7}, Ltg/c;-><init>(IIII)V

    .line 36
    .line 37
    .line 38
    aput-object v2, v1, v4

    .line 39
    .line 40
    new-instance v2, Ltg/c;

    .line 41
    .line 42
    const v6, 0x7f1300d2

    .line 43
    .line 44
    .line 45
    const v7, 0x7f0800b1

    .line 46
    .line 47
    .line 48
    const/4 v8, 0x3

    .line 49
    invoke-direct {v2, v8, v6, v8, v7}, Ltg/c;-><init>(IIII)V

    .line 50
    .line 51
    .line 52
    aput-object v2, v1, v5

    .line 53
    .line 54
    new-instance v2, Ltg/c;

    .line 55
    .line 56
    const v5, 0x7f1300d3

    .line 57
    .line 58
    .line 59
    const v6, 0x7f0800b2

    .line 60
    .line 61
    .line 62
    const/4 v7, 0x5

    .line 63
    invoke-direct {v2, v7, v5, v7, v6}, Ltg/c;-><init>(IIII)V

    .line 64
    .line 65
    .line 66
    aput-object v2, v1, v8

    .line 67
    .line 68
    new-instance v2, Ltg/c;

    .line 69
    .line 70
    const v5, 0x7f1300cf

    .line 71
    .line 72
    .line 73
    const v6, 0x7f0800ae

    .line 74
    .line 75
    .line 76
    const/4 v8, 0x4

    .line 77
    invoke-direct {v2, v8, v5, v8, v6}, Ltg/c;-><init>(IIII)V

    .line 78
    .line 79
    .line 80
    aput-object v2, v1, v8

    .line 81
    .line 82
    new-instance v2, Ltg/c;

    .line 83
    .line 84
    const v5, 0x7f1300d1

    .line 85
    .line 86
    .line 87
    const v6, 0x7f0800b0

    .line 88
    .line 89
    .line 90
    invoke-direct {v2, v0, v5, v0, v6}, Ltg/c;-><init>(IIII)V

    .line 91
    .line 92
    .line 93
    aput-object v2, v1, v7

    .line 94
    .line 95
    invoke-static {v1}, Lm9/k;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Ljava/lang/Iterable;

    .line 100
    .line 101
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_0

    .line 110
    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    check-cast v1, Ltg/c;

    .line 116
    .line 117
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/FirmGridItemModel_;

    .line 118
    .line 119
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/FirmGridItemModel_;-><init>()V

    .line 120
    .line 121
    .line 122
    new-array v5, v4, [Ljava/lang/Number;

    .line 123
    .line 124
    iget v6, v1, Ltg/c;->a:I

    .line 125
    .line 126
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    aput-object v6, v5, v3

    .line 131
    .line 132
    invoke-interface {v2, v5}, Lsg/a;->id([Ljava/lang/Number;)Lsg/a;

    .line 133
    .line 134
    .line 135
    invoke-interface {v2, v1}, Lsg/a;->firmCategoryItem(Ltg/c;)Lsg/a;

    .line 136
    .line 137
    .line 138
    new-instance v1, Ltg/a;

    .line 139
    .line 140
    iget-object v5, p0, Ltg/b;->a:Ltr/gov/turkiye/edevlet/kapisi/services/firm/FirmCategoryListFragment;

    .line 141
    .line 142
    invoke-direct {v1, v5}, Ltg/a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/services/firm/FirmCategoryListFragment;)V

    .line 143
    .line 144
    .line 145
    invoke-interface {v2, v1}, Lsg/a;->listener(Lx9/l;)Lsg/a;

    .line 146
    .line 147
    .line 148
    invoke-interface {p1, v2}, Lcom/airbnb/epoxy/f0;->add(Lcom/airbnb/epoxy/u;)V

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_0
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 153
    .line 154
    return-object p1
.end method
