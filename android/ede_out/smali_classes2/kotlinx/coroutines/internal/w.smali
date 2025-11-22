.class public final Lkotlinx/coroutines/internal/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlinx/coroutines/internal/u;

.field public static final b:Lkotlinx/coroutines/internal/w$a;

.field public static final c:Lkotlinx/coroutines/internal/w$b;

.field public static final d:Lkotlinx/coroutines/internal/w$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/u;

    const-string v1, "NO_THREAD_ELEMENTS"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/w;->a:Lkotlinx/coroutines/internal/u;

    sget-object v0, Lkotlinx/coroutines/internal/w$a;->a:Lkotlinx/coroutines/internal/w$a;

    sput-object v0, Lkotlinx/coroutines/internal/w;->b:Lkotlinx/coroutines/internal/w$a;

    sget-object v0, Lkotlinx/coroutines/internal/w$b;->a:Lkotlinx/coroutines/internal/w$b;

    sput-object v0, Lkotlinx/coroutines/internal/w;->c:Lkotlinx/coroutines/internal/w$b;

    sget-object v0, Lkotlinx/coroutines/internal/w$c;->a:Lkotlinx/coroutines/internal/w$c;

    sput-object v0, Lkotlinx/coroutines/internal/w;->d:Lkotlinx/coroutines/internal/w$c;

    return-void
.end method

.method public static final a(Lp9/f;Ljava/lang/Object;)V
    .locals 4

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/w;->a:Lkotlinx/coroutines/internal/u;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/internal/z;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    check-cast p1, Lkotlinx/coroutines/internal/z;

    .line 11
    .line 12
    iget-object p0, p1, Lkotlinx/coroutines/internal/z;->c:[Lnc/v1;

    .line 13
    .line 14
    array-length v0, p0

    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    if-ltz v0, :cond_3

    .line 18
    .line 19
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .line 20
    .line 21
    aget-object v2, p0, v0

    .line 22
    .line 23
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v3, p1, Lkotlinx/coroutines/internal/z;->b:[Ljava/lang/Object;

    .line 27
    .line 28
    aget-object v0, v3, v0

    .line 29
    .line 30
    invoke-interface {v2, v0}, Lnc/v1;->y(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    if-gez v1, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v0, v1

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    sget-object v0, Lkotlinx/coroutines/internal/w;->c:Lkotlinx/coroutines/internal/w$b;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-interface {p0, v1, v0}, Lp9/f;->fold(Ljava/lang/Object;Lx9/p;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    if-eqz p0, :cond_4

    .line 46
    .line 47
    check-cast p0, Lnc/v1;

    .line 48
    .line 49
    invoke-interface {p0, p1}, Lnc/v1;->y(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_3
    :goto_1
    return-void

    .line 53
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    .line 54
    .line 55
    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    .line 56
    .line 57
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0
.end method

.method public static final b(Lp9/f;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/internal/w;->b:Lkotlinx/coroutines/internal/w$a;

    invoke-interface {p0, v0, v1}, Lp9/f;->fold(Ljava/lang/Object;Lx9/p;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final c(Lp9/f;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    invoke-static {p0}, Lkotlinx/coroutines/internal/w;->b(Lp9/f;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object p0, Lkotlinx/coroutines/internal/w;->a:Lkotlinx/coroutines/internal/u;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    new-instance v0, Lkotlinx/coroutines/internal/z;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/z;-><init>(Lp9/f;I)V

    sget-object p1, Lkotlinx/coroutines/internal/w;->d:Lkotlinx/coroutines/internal/w$c;

    invoke-interface {p0, v0, p1}, Lp9/f;->fold(Ljava/lang/Object;Lx9/p;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_2
    check-cast p1, Lnc/v1;

    invoke-interface {p1, p0}, Lnc/v1;->v(Lp9/f;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
