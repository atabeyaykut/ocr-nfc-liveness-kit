.class public final Lkb/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lmb/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lmb/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lmb/f;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Ljb/a;->a:Lmb/h$e;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lmb/f;->a(Lmb/h$e;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Ljb/a;->b:Lmb/h$e;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lmb/f;->a(Lmb/h$e;)V

    .line 14
    .line 15
    .line 16
    sget-object v1, Ljb/a;->c:Lmb/h$e;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lmb/f;->a(Lmb/h$e;)V

    .line 19
    .line 20
    .line 21
    sget-object v1, Ljb/a;->d:Lmb/h$e;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lmb/f;->a(Lmb/h$e;)V

    .line 24
    .line 25
    .line 26
    sget-object v1, Ljb/a;->e:Lmb/h$e;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lmb/f;->a(Lmb/h$e;)V

    .line 29
    .line 30
    .line 31
    sget-object v1, Ljb/a;->f:Lmb/h$e;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lmb/f;->a(Lmb/h$e;)V

    .line 34
    .line 35
    .line 36
    sget-object v1, Ljb/a;->g:Lmb/h$e;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lmb/f;->a(Lmb/h$e;)V

    .line 39
    .line 40
    .line 41
    sget-object v1, Ljb/a;->h:Lmb/h$e;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lmb/f;->a(Lmb/h$e;)V

    .line 44
    .line 45
    .line 46
    sget-object v1, Ljb/a;->i:Lmb/h$e;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lmb/f;->a(Lmb/h$e;)V

    .line 49
    .line 50
    .line 51
    sget-object v1, Ljb/a;->j:Lmb/h$e;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lmb/f;->a(Lmb/h$e;)V

    .line 54
    .line 55
    .line 56
    sget-object v1, Ljb/a;->k:Lmb/h$e;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lmb/f;->a(Lmb/h$e;)V

    .line 59
    .line 60
    .line 61
    sget-object v1, Ljb/a;->l:Lmb/h$e;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lmb/f;->a(Lmb/h$e;)V

    .line 64
    .line 65
    .line 66
    sget-object v1, Ljb/a;->m:Lmb/h$e;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lmb/f;->a(Lmb/h$e;)V

    .line 69
    .line 70
    .line 71
    sget-object v1, Ljb/a;->n:Lmb/h$e;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lmb/f;->a(Lmb/h$e;)V

    .line 74
    .line 75
    .line 76
    sput-object v0, Lkb/h;->a:Lmb/f;

    .line 77
    .line 78
    return-void
.end method

.method public static a(Lgb/c;Lib/c;Lib/g;)Lkb/d$b;
    .locals 10

    .line 1
    const-string v0, "proto"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nameResolver"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "typeTable"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Ljb/a;->a:Lmb/h$e;

    .line 17
    .line 18
    const-string v1, "constructorSignature"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v0}, Lib/e;->a(Lmb/h$c;Lmb/h$e;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljb/a$b;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v2, 0x1

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget v3, v0, Ljb/a$b;->b:I

    .line 34
    .line 35
    and-int/2addr v3, v2

    .line 36
    if-ne v3, v2, :cond_0

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v3, 0x0

    .line 41
    :goto_0
    if-eqz v3, :cond_1

    .line 42
    .line 43
    iget v3, v0, Ljb/a$b;->c:I

    .line 44
    .line 45
    invoke-interface {p1, v3}, Lib/c;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const-string v3, "<init>"

    .line 51
    .line 52
    :goto_1
    if-eqz v0, :cond_3

    .line 53
    .line 54
    iget v4, v0, Ljb/a$b;->b:I

    .line 55
    .line 56
    const/4 v5, 0x2

    .line 57
    and-int/2addr v4, v5

    .line 58
    if-ne v4, v5, :cond_2

    .line 59
    .line 60
    const/4 v1, 0x1

    .line 61
    :cond_2
    if-eqz v1, :cond_3

    .line 62
    .line 63
    iget p0, v0, Ljb/a$b;->d:I

    .line 64
    .line 65
    invoke-interface {p1, p0}, Lib/c;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    goto :goto_3

    .line 70
    :cond_3
    iget-object p0, p0, Lgb/c;->e:Ljava/util/List;

    .line 71
    .line 72
    const-string v0, "proto.valueParameterList"

    .line 73
    .line 74
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    check-cast p0, Ljava/lang/Iterable;

    .line 78
    .line 79
    new-instance v4, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-static {p0}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    .line 87
    .line 88
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_5

    .line 97
    .line 98
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Lgb/t;

    .line 103
    .line 104
    const-string v1, "it"

    .line 105
    .line 106
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v0, p2}, Lib/f;->e(Lgb/t;Lib/g;)Lgb/p;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v0, p1}, Lkb/h;->e(Lgb/p;Lib/c;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    if-nez v0, :cond_4

    .line 118
    .line 119
    const/4 p0, 0x0

    .line 120
    return-object p0

    .line 121
    :cond_4
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_5
    const-string v5, ""

    .line 126
    .line 127
    const-string v6, "("

    .line 128
    .line 129
    const-string v7, ")V"

    .line 130
    .line 131
    const/4 v8, 0x0

    .line 132
    const/16 v9, 0x38

    .line 133
    .line 134
    invoke-static/range {v4 .. v9}, Lm9/t;->g1(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lx9/l;I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    :goto_3
    new-instance p1, Lkb/d$b;

    .line 139
    .line 140
    invoke-direct {p1, v3, p0}, Lkb/d$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    return-object p1
.end method

.method public static b(Lgb/m;Lib/c;Lib/g;Z)Lkb/d$a;
    .locals 6

    .line 1
    const-string v0, "proto"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nameResolver"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "typeTable"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Ljb/a;->d:Lmb/h$e;

    .line 17
    .line 18
    const-string v1, "propertySignature"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v0}, Lib/e;->a(Lmb/h$c;Lmb/h$e;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljb/a$c;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    return-object v1

    .line 33
    :cond_0
    iget v2, v0, Ljb/a$c;->b:I

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    and-int/2addr v2, v3

    .line 37
    const/4 v4, 0x0

    .line 38
    if-ne v2, v3, :cond_1

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v2, 0x0

    .line 43
    :goto_0
    if-eqz v2, :cond_2

    .line 44
    .line 45
    iget-object v0, v0, Ljb/a$c;->c:Ljb/a$a;

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move-object v0, v1

    .line 49
    :goto_1
    if-nez v0, :cond_3

    .line 50
    .line 51
    if-eqz p3, :cond_3

    .line 52
    .line 53
    return-object v1

    .line 54
    :cond_3
    if-eqz v0, :cond_5

    .line 55
    .line 56
    iget p3, v0, Ljb/a$a;->b:I

    .line 57
    .line 58
    and-int/2addr p3, v3

    .line 59
    if-ne p3, v3, :cond_4

    .line 60
    .line 61
    const/4 p3, 0x1

    .line 62
    goto :goto_2

    .line 63
    :cond_4
    const/4 p3, 0x0

    .line 64
    :goto_2
    if-eqz p3, :cond_5

    .line 65
    .line 66
    iget p3, v0, Ljb/a$a;->c:I

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_5
    iget p3, p0, Lgb/m;->f:I

    .line 70
    .line 71
    :goto_3
    if-eqz v0, :cond_7

    .line 72
    .line 73
    iget v2, v0, Ljb/a$a;->b:I

    .line 74
    .line 75
    const/4 v5, 0x2

    .line 76
    and-int/2addr v2, v5

    .line 77
    if-ne v2, v5, :cond_6

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_6
    const/4 v3, 0x0

    .line 81
    :goto_4
    if-eqz v3, :cond_7

    .line 82
    .line 83
    iget p0, v0, Ljb/a$a;->d:I

    .line 84
    .line 85
    invoke-interface {p1, p0}, Lib/c;->getString(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    goto :goto_5

    .line 90
    :cond_7
    invoke-static {p0, p2}, Lib/f;->d(Lgb/m;Lib/g;)Lgb/p;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {p0, p1}, Lkb/h;->e(Lgb/p;Lib/c;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    if-nez p0, :cond_8

    .line 99
    .line 100
    return-object v1

    .line 101
    :cond_8
    :goto_5
    new-instance p2, Lkb/d$a;

    .line 102
    .line 103
    invoke-interface {p1, p3}, Lib/c;->getString(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-direct {p2, p1, p0}, Lkb/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    return-object p2
.end method

.method public static c(Lgb/h;Lib/c;Lib/g;)Lkb/d$b;
    .locals 10

    .line 1
    const-string v0, "proto"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nameResolver"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "typeTable"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Ljb/a;->b:Lmb/h$e;

    .line 17
    .line 18
    const-string v1, "methodSignature"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v0}, Lib/e;->a(Lmb/h$c;Lmb/h$e;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljb/a$b;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v2, 0x1

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget v3, v0, Ljb/a$b;->b:I

    .line 34
    .line 35
    and-int/2addr v3, v2

    .line 36
    if-ne v3, v2, :cond_0

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v3, 0x0

    .line 41
    :goto_0
    if-eqz v3, :cond_1

    .line 42
    .line 43
    iget v3, v0, Ljb/a$b;->c:I

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    iget v3, p0, Lgb/h;->f:I

    .line 47
    .line 48
    :goto_1
    if-eqz v0, :cond_3

    .line 49
    .line 50
    iget v4, v0, Ljb/a$b;->b:I

    .line 51
    .line 52
    const/4 v5, 0x2

    .line 53
    and-int/2addr v4, v5

    .line 54
    if-ne v4, v5, :cond_2

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    :cond_2
    if-eqz v1, :cond_3

    .line 58
    .line 59
    iget p0, v0, Ljb/a$b;->d:I

    .line 60
    .line 61
    invoke-interface {p1, p0}, Lib/c;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    goto/16 :goto_4

    .line 66
    .line 67
    :cond_3
    invoke-static {p0, p2}, Lib/f;->b(Lgb/h;Lib/g;)Lgb/p;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Lb8/f;->U(Ljava/lang/Object;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Ljava/util/Collection;

    .line 76
    .line 77
    iget-object v1, p0, Lgb/h;->q:Ljava/util/List;

    .line 78
    .line 79
    const-string v2, "proto.valueParameterList"

    .line 80
    .line 81
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    check-cast v1, Ljava/lang/Iterable;

    .line 85
    .line 86
    new-instance v2, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-static {v1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    .line 94
    .line 95
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-eqz v4, :cond_4

    .line 104
    .line 105
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    check-cast v4, Lgb/t;

    .line 110
    .line 111
    const-string v5, "it"

    .line 112
    .line 113
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v4, p2}, Lib/f;->e(Lgb/t;Lib/g;)Lgb/p;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_4
    invoke-static {v2, v0}, Lm9/t;->m1(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    new-instance v4, Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-static {v0}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    const/4 v2, 0x0

    .line 146
    if-eqz v1, :cond_6

    .line 147
    .line 148
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    check-cast v1, Lgb/p;

    .line 153
    .line 154
    invoke-static {v1, p1}, Lkb/h;->e(Lgb/p;Lib/c;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    if-nez v1, :cond_5

    .line 159
    .line 160
    return-object v2

    .line 161
    :cond_5
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_6
    invoke-static {p0, p2}, Lib/f;->c(Lgb/h;Lib/g;)Lgb/p;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-static {p0, p1}, Lkb/h;->e(Lgb/p;Lib/c;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    if-nez p0, :cond_7

    .line 174
    .line 175
    return-object v2

    .line 176
    :cond_7
    const-string v5, ""

    .line 177
    .line 178
    const-string v6, "("

    .line 179
    .line 180
    const-string v7, ")"

    .line 181
    .line 182
    const/4 v8, 0x0

    .line 183
    const/16 v9, 0x38

    .line 184
    .line 185
    invoke-static/range {v4 .. v9}, Lm9/t;->g1(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lx9/l;I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    :goto_4
    new-instance p2, Lkb/d$b;

    .line 194
    .line 195
    invoke-interface {p1, v3}, Lib/c;->getString(I)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-direct {p2, p1, p0}, Lkb/d$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    return-object p2
.end method

.method public static final d(Lgb/m;)Z
    .locals 2

    .line 1
    const-string v0, "proto"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lkb/c;->a:Lib/b$a;

    .line 7
    .line 8
    sget-object v0, Lkb/c;->a:Lib/b$a;

    .line 9
    .line 10
    sget-object v1, Ljb/a;->e:Lmb/h$e;

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lmb/h$c;->k(Lmb/h$e;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v1, "proto.getExtension(JvmProtoBuf.flags)"

    .line 17
    .line 18
    invoke-static {p0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    check-cast p0, Ljava/lang/Number;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    invoke-virtual {v0, p0}, Lib/b$a;->c(I)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string v0, "JvmFlags.IS_MOVED_FROM_I\u2026nsion(JvmProtoBuf.flags))"

    .line 32
    .line 33
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0
.end method

.method public static e(Lgb/p;Lib/c;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lgb/p;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget p0, p0, Lgb/p;->j:I

    .line 8
    .line 9
    invoke-interface {p1, p0}, Lib/c;->a(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Lkb/b;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return-object p0
.end method

.method public static final f([Ljava/lang/String;[Ljava/lang/String;)Ll9/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ll9/g<",
            "Lkb/f;",
            "Lgb/b;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lkb/a;->b([Ljava/lang/String;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 8
    .line 9
    .line 10
    new-instance p0, Ll9/g;

    .line 11
    .line 12
    invoke-static {v0, p1}, Lkb/h;->g(Ljava/io/ByteArrayInputStream;[Ljava/lang/String;)Lkb/f;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget-object v1, Lgb/b;->O:Lgb/b$a;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v2, Lmb/d;

    .line 22
    .line 23
    invoke-direct {v2, v0}, Lmb/d;-><init>(Ljava/io/InputStream;)V

    .line 24
    .line 25
    .line 26
    sget-object v0, Lkb/h;->a:Lmb/f;

    .line 27
    .line 28
    invoke-interface {v1, v2, v0}, Lmb/r;->a(Lmb/d;Lmb/f;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lmb/p;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    :try_start_0
    invoke-virtual {v2, v1}, Lmb/d;->a(I)V
    :try_end_0
    .catch Lmb/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lmb/b;->b(Lmb/p;)V

    .line 39
    .line 40
    .line 41
    check-cast v0, Lgb/b;

    .line 42
    .line 43
    invoke-direct {p0, p1, v0}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-object p0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    iput-object v0, p0, Lmb/j;->a:Lmb/p;

    .line 49
    .line 50
    throw p0
.end method

.method public static g(Ljava/io/ByteArrayInputStream;[Ljava/lang/String;)Lkb/f;
    .locals 3

    .line 1
    new-instance v0, Lkb/f;

    .line 2
    .line 3
    sget-object v1, Ljb/a$d;->h:Ljb/a$d$a;

    .line 4
    .line 5
    sget-object v2, Lkb/h;->a:Lmb/f;

    .line 6
    .line 7
    invoke-virtual {v1, p0, v2}, Lmb/b;->c(Ljava/io/ByteArrayInputStream;Lmb/f;)Lmb/p;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljb/a$d;

    .line 12
    .line 13
    const-string v1, "parseDelimitedFrom(this, EXTENSION_REGISTRY)"

    .line 14
    .line 15
    invoke-static {p0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0, p1}, Lkb/f;-><init>(Ljb/a$d;[Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public static final h([Ljava/lang/String;[Ljava/lang/String;)Ll9/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ll9/g<",
            "Lkb/f;",
            "Lgb/k;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lkb/a;->b([Ljava/lang/String;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 8
    .line 9
    .line 10
    new-instance p0, Ll9/g;

    .line 11
    .line 12
    invoke-static {v0, p1}, Lkb/h;->g(Ljava/io/ByteArrayInputStream;[Ljava/lang/String;)Lkb/f;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget-object v1, Lgb/k;->m:Lgb/k$a;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v2, Lmb/d;

    .line 22
    .line 23
    invoke-direct {v2, v0}, Lmb/d;-><init>(Ljava/io/InputStream;)V

    .line 24
    .line 25
    .line 26
    sget-object v0, Lkb/h;->a:Lmb/f;

    .line 27
    .line 28
    invoke-interface {v1, v2, v0}, Lmb/r;->a(Lmb/d;Lmb/f;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lmb/p;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    :try_start_0
    invoke-virtual {v2, v1}, Lmb/d;->a(I)V
    :try_end_0
    .catch Lmb/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lmb/b;->b(Lmb/p;)V

    .line 39
    .line 40
    .line 41
    check-cast v0, Lgb/k;

    .line 42
    .line 43
    invoke-direct {p0, p1, v0}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-object p0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    iput-object v0, p0, Lmb/j;->a:Lmb/p;

    .line 49
    .line 50
    throw p0
.end method
