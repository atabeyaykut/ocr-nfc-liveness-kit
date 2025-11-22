.class public final Lkotlinx/coroutines/internal/w$c;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/p<",
        "Lkotlinx/coroutines/internal/z;",
        "Lp9/f$b;",
        "Lkotlinx/coroutines/internal/z;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lkotlinx/coroutines/internal/w$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/internal/w$c;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/w$c;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/w$c;->a:Lkotlinx/coroutines/internal/w$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/internal/z;

    .line 2
    .line 3
    check-cast p2, Lp9/f$b;

    .line 4
    .line 5
    instance-of v0, p2, Lnc/v1;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p2, Lnc/v1;

    .line 10
    .line 11
    iget-object v0, p1, Lkotlinx/coroutines/internal/z;->a:Lp9/f;

    .line 12
    .line 13
    invoke-interface {p2, v0}, Lnc/v1;->v(Lp9/f;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v1, p1, Lkotlinx/coroutines/internal/z;->d:I

    .line 18
    .line 19
    iget-object v2, p1, Lkotlinx/coroutines/internal/z;->b:[Ljava/lang/Object;

    .line 20
    .line 21
    aput-object v0, v2, v1

    .line 22
    .line 23
    add-int/lit8 v0, v1, 0x1

    .line 24
    .line 25
    iput v0, p1, Lkotlinx/coroutines/internal/z;->d:I

    .line 26
    .line 27
    iget-object v0, p1, Lkotlinx/coroutines/internal/z;->c:[Lnc/v1;

    .line 28
    .line 29
    aput-object p2, v0, v1

    .line 30
    .line 31
    :cond_0
    return-object p1
.end method
