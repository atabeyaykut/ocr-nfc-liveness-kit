.class public final Ll8/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll8/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll8/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Type;Ljava/util/Set;Ll8/b0;)Ll8/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ll8/b0;",
            ")",
            "Ll8/p<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ll8/d0;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    const-class p2, Ljava/util/List;

    .line 14
    .line 15
    if-eq v0, p2, :cond_3

    .line 16
    .line 17
    const-class p2, Ljava/util/Collection;

    .line 18
    .line 19
    if-ne v0, p2, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const-class p2, Ljava/util/Set;

    .line 23
    .line 24
    if-ne v0, p2, :cond_2

    .line 25
    .line 26
    invoke-static {p1}, Ll8/d0;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p3, p1}, Ll8/b0;->a(Ljava/lang/reflect/Type;)Ll8/p;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance p2, Ll8/j;

    .line 35
    .line 36
    invoke-direct {p2, p1}, Ll8/j;-><init>(Ll8/p;)V

    .line 37
    .line 38
    .line 39
    new-instance p1, Ll8/m;

    .line 40
    .line 41
    invoke-direct {p1, p2}, Ll8/m;-><init>(Ll8/p;)V

    .line 42
    .line 43
    .line 44
    return-object p1

    .line 45
    :cond_2
    return-object v1

    .line 46
    :cond_3
    :goto_0
    invoke-static {p1}, Ll8/d0;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p3, p1}, Ll8/b0;->a(Ljava/lang/reflect/Type;)Ll8/p;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-instance p2, Ll8/i;

    .line 55
    .line 56
    invoke-direct {p2, p1}, Ll8/i;-><init>(Ll8/p;)V

    .line 57
    .line 58
    .line 59
    new-instance p1, Ll8/m;

    .line 60
    .line 61
    invoke-direct {p1, p2}, Ll8/m;-><init>(Ll8/p;)V

    .line 62
    .line 63
    .line 64
    return-object p1
.end method
