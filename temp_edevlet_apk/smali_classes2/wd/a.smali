.class public final Lwd/a;
.super Lud/f$a;
.source "SourceFile"


# instance fields
.field public final a:Ll8/b0;

.field public final b:Z

.field public final c:Z

.field public final d:Z


# direct methods
.method public constructor <init>(Ll8/b0;)V
    .locals 0

    invoke-direct {p0}, Lud/f$a;-><init>()V

    iput-object p1, p0, Lwd/a;->a:Ll8/b0;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lwd/a;->b:Z

    iput-boolean p1, p0, Lwd/a;->c:Z

    iput-boolean p1, p0, Lwd/a;->d:Z

    return-void
.end method

.method public static c()Lwd/a;
    .locals 2

    .line 1
    new-instance v0, Ll8/b0$a;

    .line 2
    .line 3
    invoke-direct {v0}, Ll8/b0$a;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ll8/b0;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Ll8/b0;-><init>(Ll8/b0$a;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lwd/a;

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lwd/a;-><init>(Ll8/b0;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static d([Ljava/lang/annotation/Annotation;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ll8/t;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    :cond_0
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lud/f;
    .locals 2

    .line 1
    invoke-static {p2}, Lwd/a;->d([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const/4 v0, 0x0

    .line 6
    iget-object v1, p0, Lwd/a;->a:Ll8/b0;

    .line 7
    .line 8
    invoke-virtual {v1, p1, p2, v0}, Ll8/b0;->b(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Ll8/p;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-boolean p2, p0, Lwd/a;->b:Z

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    new-instance p2, Ll8/n;

    .line 17
    .line 18
    invoke-direct {p2, p1}, Ll8/n;-><init>(Ll8/p;)V

    .line 19
    .line 20
    .line 21
    move-object p1, p2

    .line 22
    :cond_0
    iget-boolean p2, p0, Lwd/a;->c:Z

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    new-instance p2, Ll8/o;

    .line 27
    .line 28
    invoke-direct {p2, p1}, Ll8/o;-><init>(Ll8/p;)V

    .line 29
    .line 30
    .line 31
    move-object p1, p2

    .line 32
    :cond_1
    iget-boolean p2, p0, Lwd/a;->d:Z

    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    new-instance p2, Ll8/l;

    .line 37
    .line 38
    invoke-direct {p2, p1}, Ll8/l;-><init>(Ll8/p;)V

    .line 39
    .line 40
    .line 41
    move-object p1, p2

    .line 42
    :cond_2
    new-instance p2, Lwd/b;

    .line 43
    .line 44
    invoke-direct {p2, p1}, Lwd/b;-><init>(Ll8/p;)V

    .line 45
    .line 46
    .line 47
    return-object p2
.end method

.method public final b(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lud/d0;)Lud/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lud/d0;",
            ")",
            "Lud/f<",
            "Lrc/d0;",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lwd/a;->d([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const/4 p3, 0x0

    .line 6
    iget-object v0, p0, Lwd/a;->a:Ll8/b0;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3}, Ll8/b0;->b(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Ll8/p;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-boolean p2, p0, Lwd/a;->b:Z

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    new-instance p2, Ll8/n;

    .line 17
    .line 18
    invoke-direct {p2, p1}, Ll8/n;-><init>(Ll8/p;)V

    .line 19
    .line 20
    .line 21
    move-object p1, p2

    .line 22
    :cond_0
    iget-boolean p2, p0, Lwd/a;->c:Z

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    new-instance p2, Ll8/o;

    .line 27
    .line 28
    invoke-direct {p2, p1}, Ll8/o;-><init>(Ll8/p;)V

    .line 29
    .line 30
    .line 31
    move-object p1, p2

    .line 32
    :cond_1
    iget-boolean p2, p0, Lwd/a;->d:Z

    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    new-instance p2, Ll8/l;

    .line 37
    .line 38
    invoke-direct {p2, p1}, Ll8/l;-><init>(Ll8/p;)V

    .line 39
    .line 40
    .line 41
    move-object p1, p2

    .line 42
    :cond_2
    new-instance p2, Lwd/c;

    .line 43
    .line 44
    invoke-direct {p2, p1}, Lwd/c;-><init>(Ll8/p;)V

    .line 45
    .line 46
    .line 47
    return-object p2
.end method
