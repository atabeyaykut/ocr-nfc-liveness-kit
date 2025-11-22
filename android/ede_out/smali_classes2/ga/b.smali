.class public final Lga/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lga/c;

.field public static final b:Lga/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lga/b$d;->a:Lga/b$d;

    invoke-static {v0}, Lga/a;->a(Lx9/l;)Lga/c;

    move-result-object v0

    sput-object v0, Lga/b;->a:Lga/c;

    sget-object v0, Lga/b$e;->a:Lga/b$e;

    invoke-static {v0}, Lga/a;->a(Lx9/l;)Lga/c;

    move-result-object v0

    sput-object v0, Lga/b;->b:Lga/c;

    sget-object v0, Lga/b$a;->a:Lga/b$a;

    invoke-static {v0}, Lga/a;->a(Lx9/l;)Lga/c;

    sget-object v0, Lga/b$c;->a:Lga/b$c;

    invoke-static {v0}, Lga/a;->a(Lx9/l;)Lga/c;

    sget-object v0, Lga/b$b;->a:Lga/b$b;

    invoke-static {v0}, Lga/a;->a(Lx9/l;)Lga/c;

    return-void
.end method

.method public static final a(Ljava/lang/Class;)Lga/n;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lga/n<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const-string v0, "jClass"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lga/b;->a:Lga/c;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lga/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    iget-object v0, v0, Lga/c;->a:Lx9/l;

    .line 20
    .line 21
    invoke-interface {v0, p0}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    if-nez p0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v2, p0

    .line 33
    :cond_1
    :goto_0
    const-string p0, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<T of kotlin.reflect.jvm.internal.CachesKt.getOrCreateKotlinClass>"

    .line 34
    .line 35
    invoke-static {v2, p0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    check-cast v2, Lga/n;

    .line 39
    .line 40
    return-object v2
.end method
