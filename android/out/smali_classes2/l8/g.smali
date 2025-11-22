.class public final Ll8/g;
.super Ll8/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll8/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ll8/p<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final d:Ll8/g$a;


# instance fields
.field public final a:Ll8/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll8/f<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:[Ll8/g$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ll8/g$b<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:Ll8/u$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll8/g$a;

    invoke-direct {v0}, Ll8/g$a;-><init>()V

    sput-object v0, Ll8/g;->d:Ll8/g$a;

    return-void
.end method

.method public constructor <init>(Ll8/f;Ljava/util/TreeMap;)V
    .locals 1

    invoke-direct {p0}, Ll8/p;-><init>()V

    iput-object p1, p0, Ll8/g;->a:Ll8/f;

    invoke-virtual {p2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p2}, Ljava/util/TreeMap;->size()I

    move-result v0

    new-array v0, v0, [Ll8/g$b;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ll8/g$b;

    iput-object p1, p0, Ll8/g;->b:[Ll8/g$b;

    invoke-virtual {p2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p2}, Ljava/util/TreeMap;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Ll8/u$a;->a([Ljava/lang/String;)Ll8/u$a;

    move-result-object p1

    iput-object p1, p0, Ll8/g;->c:Ll8/u$a;

    return-void
.end method


# virtual methods
.method public final a(Ll8/u;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll8/u;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Ll8/g;->a:Ll8/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll8/f;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    :try_start_1
    invoke-virtual {p1}, Ll8/u;->b()V

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p1}, Ll8/u;->e()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Ll8/g;->c:Ll8/u$a;

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Ll8/u;->n(Ll8/u$a;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, -0x1

    .line 23
    if-ne v1, v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Ll8/u;->o()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ll8/u;->p()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v2, p0, Ll8/g;->b:[Ll8/g$b;

    .line 33
    .line 34
    aget-object v1, v2, v1

    .line 35
    .line 36
    iget-object v2, v1, Ll8/g$b;->c:Ll8/p;

    .line 37
    .line 38
    invoke-virtual {v2, p1}, Ll8/p;->a(Ll8/u;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget-object v1, v1, Ll8/g$b;->b:Ljava/lang/reflect/Field;

    .line 43
    .line 44
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p1}, Ll8/u;->d()V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 49
    .line 50
    .line 51
    return-object v0

    .line 52
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 53
    .line 54
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :catch_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 59
    .line 60
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :catch_2
    move-exception p1

    .line 65
    invoke-static {p1}, Lm8/a;->f(Ljava/lang/reflect/InvocationTargetException;)V

    .line 66
    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    throw p1

    .line 70
    :catch_3
    move-exception p1

    .line 71
    new-instance v0, Ljava/lang/RuntimeException;

    .line 72
    .line 73
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    throw v0
.end method

.method public final c(Ll8/y;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll8/y;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ll8/y;->b()Ll8/y;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ll8/g;->b:[Ll8/g$b;

    .line 5
    .line 6
    array-length v1, v0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_0

    .line 9
    .line 10
    aget-object v3, v0, v2

    .line 11
    .line 12
    iget-object v4, v3, Ll8/g$b;->a:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p1, v4}, Ll8/y;->f(Ljava/lang/String;)Ll8/y;

    .line 15
    .line 16
    .line 17
    iget-object v4, v3, Ll8/g$b;->b:Ljava/lang/reflect/Field;

    .line 18
    .line 19
    invoke-virtual {v4, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    iget-object v3, v3, Ll8/g$b;->c:Ll8/p;

    .line 24
    .line 25
    invoke-virtual {v3, p1, v4}, Ll8/p;->c(Ll8/y;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1}, Ll8/y;->e()Ll8/y;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JsonAdapter("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ll8/g;->a:Ll8/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
