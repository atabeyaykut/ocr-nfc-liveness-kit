.class public final Lla/s;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lna/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lla/k;


# direct methods
.method public constructor <init>(Lla/k;)V
    .locals 0

    iput-object p1, p0, Lla/s;->a:Lla/k;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lla/s;->a:Lla/k;

    .line 2
    .line 3
    iget-object v0, v0, Lla/k;->a:Lma/b0;

    .line 4
    .line 5
    invoke-interface {v0}, Lma/b0;->m()Lja/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lna/g;->a:Llb/f;

    .line 10
    .line 11
    const-string v1, "<this>"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lna/j;

    .line 17
    .line 18
    sget-object v2, Lja/o$a;->o:Llb/c;

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    new-array v4, v3, [Ll9/g;

    .line 22
    .line 23
    new-instance v5, Lqb/w;

    .line 24
    .line 25
    const-string v6, ""

    .line 26
    .line 27
    invoke-direct {v5, v6}, Lqb/w;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v6, Ll9/g;

    .line 31
    .line 32
    sget-object v7, Lna/g;->d:Llb/f;

    .line 33
    .line 34
    invoke-direct {v6, v7, v5}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    aput-object v6, v4, v5

    .line 39
    .line 40
    new-instance v6, Lqb/b;

    .line 41
    .line 42
    sget-object v7, Lm9/v;->a:Lm9/v;

    .line 43
    .line 44
    new-instance v8, Lna/f;

    .line 45
    .line 46
    invoke-direct {v8, v0}, Lna/f;-><init>(Lja/k;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {v6, v7, v8}, Lqb/b;-><init>(Ljava/util/List;Lx9/l;)V

    .line 50
    .line 51
    .line 52
    new-instance v7, Ll9/g;

    .line 53
    .line 54
    sget-object v8, Lna/g;->e:Llb/f;

    .line 55
    .line 56
    invoke-direct {v7, v8, v6}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    const/4 v6, 0x1

    .line 60
    aput-object v7, v4, v6

    .line 61
    .line 62
    invoke-static {v4}, Lm9/e0;->R0([Ll9/g;)Ljava/util/Map;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-direct {v1, v0, v2, v4}, Lna/j;-><init>(Lja/k;Llb/c;Ljava/util/Map;)V

    .line 67
    .line 68
    .line 69
    new-instance v2, Lna/j;

    .line 70
    .line 71
    sget-object v4, Lja/o$a;->m:Llb/c;

    .line 72
    .line 73
    const/4 v7, 0x3

    .line 74
    new-array v7, v7, [Ll9/g;

    .line 75
    .line 76
    new-instance v8, Lqb/w;

    .line 77
    .line 78
    const-string v9, "This member is not fully supported by Kotlin compiler, so it may be absent or have different signature in next major version"

    .line 79
    .line 80
    invoke-direct {v8, v9}, Lqb/w;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    new-instance v9, Ll9/g;

    .line 84
    .line 85
    sget-object v10, Lna/g;->a:Llb/f;

    .line 86
    .line 87
    invoke-direct {v9, v10, v8}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    aput-object v9, v7, v5

    .line 91
    .line 92
    new-instance v5, Lqb/a;

    .line 93
    .line 94
    invoke-direct {v5, v1}, Lqb/a;-><init>(Lna/c;)V

    .line 95
    .line 96
    .line 97
    new-instance v1, Ll9/g;

    .line 98
    .line 99
    sget-object v8, Lna/g;->b:Llb/f;

    .line 100
    .line 101
    invoke-direct {v1, v8, v5}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    aput-object v1, v7, v6

    .line 105
    .line 106
    new-instance v1, Lqb/k;

    .line 107
    .line 108
    sget-object v5, Lja/o$a;->n:Llb/c;

    .line 109
    .line 110
    invoke-static {v5}, Llb/b;->l(Llb/c;)Llb/b;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    const-string v6, "WARNING"

    .line 115
    .line 116
    invoke-static {v6}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    invoke-direct {v1, v5, v6}, Lqb/k;-><init>(Llb/b;Llb/f;)V

    .line 121
    .line 122
    .line 123
    new-instance v5, Ll9/g;

    .line 124
    .line 125
    sget-object v6, Lna/g;->c:Llb/f;

    .line 126
    .line 127
    invoke-direct {v5, v6, v1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    aput-object v5, v7, v3

    .line 131
    .line 132
    invoke-static {v7}, Lm9/e0;->R0([Ll9/g;)Ljava/util/Map;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-direct {v2, v0, v4, v1}, Lna/j;-><init>(Lja/k;Llb/c;Ljava/util/Map;)V

    .line 137
    .line 138
    .line 139
    invoke-static {v2}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-static {v0}, Lna/h$a;->a(Ljava/util/List;)Lna/h;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    return-object v0
.end method
