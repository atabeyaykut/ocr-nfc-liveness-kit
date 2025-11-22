.class public final Llb/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Llb/c;

    const-string v1, "java.lang"

    invoke-direct {v0, v1}, Llb/c;-><init>(Ljava/lang/String;)V

    const-string v1, "annotation"

    invoke-static {v1}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Llb/c;->c(Llb/f;)Llb/c;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Llb/b;
    .locals 2

    .line 1
    new-instance v0, Llb/b;

    .line 2
    .line 3
    sget-object v1, Llb/i;->a:Llb/c;

    .line 4
    .line 5
    sget-object v1, Llb/i;->a:Llb/c;

    .line 6
    .line 7
    invoke-static {p0}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, v1, p0}, Llb/b;-><init>(Llb/c;Llb/f;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static final b(Ljava/lang/String;)Llb/b;
    .locals 2

    .line 1
    new-instance v0, Llb/b;

    .line 2
    .line 3
    sget-object v1, Llb/i;->a:Llb/c;

    .line 4
    .line 5
    sget-object v1, Llb/i;->c:Llb/c;

    .line 6
    .line 7
    invoke-static {p0}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, v1, p0}, Llb/b;-><init>(Llb/c;Llb/f;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static final c(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;
    .locals 3

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    move-result v0

    invoke-static {v0}, Lb8/f;->V(I)I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    const/16 v0, 0x10

    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static final d(Llb/f;)Llb/b;
    .locals 4

    .line 1
    new-instance v0, Llb/b;

    .line 2
    .line 3
    sget-object v1, Llb/i;->a:Llb/c;

    .line 4
    .line 5
    sget-object v1, Llb/i;->h:Llb/b;

    .line 6
    .line 7
    invoke-virtual {v1}, Llb/b;->h()Llb/c;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Llb/f;->q()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Llb/b;->j()Llb/f;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Llb/f;->q()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-direct {v0, v2, p0}, Llb/b;-><init>(Llb/c;Llb/f;)V

    .line 43
    .line 44
    .line 45
    return-object v0
.end method

.method public static final e(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Llb/b;

    .line 2
    .line 3
    sget-object v1, Llb/i;->a:Llb/c;

    .line 4
    .line 5
    sget-object v1, Llb/i;->d:Llb/c;

    .line 6
    .line 7
    invoke-static {p0}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, v1, p0}, Llb/b;-><init>(Llb/c;Llb/f;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static final f(Ljava/lang/String;)Llb/b;
    .locals 2

    .line 1
    new-instance v0, Llb/b;

    .line 2
    .line 3
    sget-object v1, Llb/i;->a:Llb/c;

    .line 4
    .line 5
    sget-object v1, Llb/i;->b:Llb/c;

    .line 6
    .line 7
    invoke-static {p0}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, v1, p0}, Llb/b;-><init>(Llb/c;Llb/f;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static final g(Llb/b;)Llb/b;
    .locals 4

    .line 1
    new-instance v0, Llb/b;

    .line 2
    .line 3
    sget-object v1, Llb/i;->a:Llb/c;

    .line 4
    .line 5
    sget-object v1, Llb/i;->a:Llb/c;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "U"

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Llb/b;->j()Llb/f;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Llb/f;->q()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v0, v1, p0}, Llb/b;-><init>(Llb/c;Llb/f;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method
