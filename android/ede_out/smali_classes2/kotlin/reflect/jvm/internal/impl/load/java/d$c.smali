.class public final Lkotlin/reflect/jvm/internal/impl/load/java/d$c;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/d;->c(Lma/b;)Lma/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lma/b;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/load/java/d$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/d$c;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/d$c;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/d$c;->a:Lkotlin/reflect/jvm/internal/impl/load/java/d$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lma/b;

    .line 2
    .line 3
    const-string v0, "it"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lja/k;->z(Lma/j;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_5

    .line 14
    .line 15
    sget v0, Lkotlin/reflect/jvm/internal/impl/load/java/c;->m:I

    .line 16
    .line 17
    invoke-interface {p1}, Lma/j;->getName()Llb/f;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/e;->f:Ljava/util/Set;

    .line 22
    .line 23
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v2, 0x1

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    sget-object v0, Lva/f;->a:Lva/f;

    .line 32
    .line 33
    invoke-static {p1, v0}, Lsb/b;->b(Lma/b;Lx9/l;)Lma/b;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_4

    .line 38
    .line 39
    invoke-static {p1}, Leb/w;->b(Lma/a;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/e;->c:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    const/4 p1, 0x1

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/e;->e:Ljava/util/LinkedHashMap;

    .line 57
    .line 58
    invoke-static {v0, p1}, Lm9/e0;->Q0(Ljava/util/Map;Ljava/lang/Comparable;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/e$b;

    .line 63
    .line 64
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/e$b;->b:Lkotlin/reflect/jvm/internal/impl/load/java/e$b;

    .line 65
    .line 66
    if-ne p1, v0, :cond_3

    .line 67
    .line 68
    const/4 p1, 0x3

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    const/4 p1, 0x2

    .line 71
    goto :goto_1

    .line 72
    :cond_4
    :goto_0
    const/4 p1, 0x0

    .line 73
    :goto_1
    if-eqz p1, :cond_5

    .line 74
    .line 75
    const/4 v1, 0x1

    .line 76
    :cond_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    return-object p1
.end method
