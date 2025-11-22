.class public final Lib/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lgb/p;Lib/g;)Lgb/p;
    .locals 5

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "typeTable"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lgb/p;->c:I

    .line 12
    .line 13
    and-int/lit16 v1, v0, 0x100

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    const/16 v4, 0x100

    .line 18
    .line 19
    if-ne v1, v4, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget-object p0, p0, Lgb/p;->n:Lgb/p;

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_1
    const/16 v1, 0x200

    .line 30
    .line 31
    and-int/2addr v0, v1

    .line 32
    if-ne v0, v1, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const/4 v2, 0x0

    .line 36
    :goto_1
    if-eqz v2, :cond_3

    .line 37
    .line 38
    iget p0, p0, Lgb/p;->p:I

    .line 39
    .line 40
    invoke-virtual {p1, p0}, Lib/g;->a(I)Lgb/p;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    goto :goto_2

    .line 45
    :cond_3
    const/4 p0, 0x0

    .line 46
    :goto_2
    return-object p0
.end method

.method public static final b(Lgb/h;Lib/g;)Lgb/p;
    .locals 5

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "typeTable"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lgb/h;->c:I

    .line 12
    .line 13
    and-int/lit8 v1, v0, 0x20

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    const/16 v4, 0x20

    .line 18
    .line 19
    if-ne v1, v4, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget-object p0, p0, Lgb/h;->k:Lgb/p;

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_1
    const/16 v1, 0x40

    .line 30
    .line 31
    and-int/2addr v0, v1

    .line 32
    if-ne v0, v1, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const/4 v2, 0x0

    .line 36
    :goto_1
    if-eqz v2, :cond_3

    .line 37
    .line 38
    iget p0, p0, Lgb/h;->l:I

    .line 39
    .line 40
    invoke-virtual {p1, p0}, Lib/g;->a(I)Lgb/p;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    goto :goto_2

    .line 45
    :cond_3
    const/4 p0, 0x0

    .line 46
    :goto_2
    return-object p0
.end method

.method public static final c(Lgb/h;Lib/g;)Lgb/p;
    .locals 5

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "typeTable"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lgb/h;->c:I

    .line 12
    .line 13
    and-int/lit8 v1, v0, 0x8

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    const/16 v4, 0x8

    .line 18
    .line 19
    if-ne v1, v4, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget-object p0, p0, Lgb/h;->g:Lgb/p;

    .line 27
    .line 28
    const-string p1, "returnType"

    .line 29
    .line 30
    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_1
    const/16 v1, 0x10

    .line 35
    .line 36
    and-int/2addr v0, v1

    .line 37
    if-ne v0, v1, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const/4 v2, 0x0

    .line 41
    :goto_1
    if-eqz v2, :cond_3

    .line 42
    .line 43
    iget p0, p0, Lgb/h;->h:I

    .line 44
    .line 45
    invoke-virtual {p1, p0}, Lib/g;->a(I)Lgb/p;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    :goto_2
    return-object p0

    .line 50
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string p1, "No returnType in ProtoBuf.Function"

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0
.end method

.method public static final d(Lgb/m;Lib/g;)Lgb/p;
    .locals 5

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "typeTable"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lgb/m;->c:I

    .line 12
    .line 13
    and-int/lit8 v1, v0, 0x8

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    const/16 v4, 0x8

    .line 18
    .line 19
    if-ne v1, v4, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget-object p0, p0, Lgb/m;->g:Lgb/p;

    .line 27
    .line 28
    const-string p1, "returnType"

    .line 29
    .line 30
    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_1
    const/16 v1, 0x10

    .line 35
    .line 36
    and-int/2addr v0, v1

    .line 37
    if-ne v0, v1, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const/4 v2, 0x0

    .line 41
    :goto_1
    if-eqz v2, :cond_3

    .line 42
    .line 43
    iget p0, p0, Lgb/m;->h:I

    .line 44
    .line 45
    invoke-virtual {p1, p0}, Lib/g;->a(I)Lgb/p;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    :goto_2
    return-object p0

    .line 50
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string p1, "No returnType in ProtoBuf.Property"

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0
.end method

.method public static final e(Lgb/t;Lib/g;)Lgb/p;
    .locals 5

    .line 1
    const-string v0, "typeTable"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lgb/t;->c:I

    .line 7
    .line 8
    and-int/lit8 v1, v0, 0x4

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x4

    .line 13
    if-ne v1, v4, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object p0, p0, Lgb/t;->f:Lgb/p;

    .line 21
    .line 22
    const-string p1, "type"

    .line 23
    .line 24
    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_1
    const/16 v1, 0x8

    .line 29
    .line 30
    and-int/2addr v0, v1

    .line 31
    if-ne v0, v1, :cond_2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    const/4 v2, 0x0

    .line 35
    :goto_1
    if-eqz v2, :cond_3

    .line 36
    .line 37
    iget p0, p0, Lgb/t;->g:I

    .line 38
    .line 39
    invoke-virtual {p1, p0}, Lib/g;->a(I)Lgb/p;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    :goto_2
    return-object p0

    .line 44
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string p1, "No type in ProtoBuf.ValueParameter"

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0
.end method
