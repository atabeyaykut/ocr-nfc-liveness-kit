.class public final Lnc/w$b;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnc/w;->a(Lp9/f;Lp9/f;Z)Lp9/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/p<",
        "Lp9/f;",
        "Lp9/f$b;",
        "Lp9/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/v<",
            "Lp9/f;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/v;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/v<",
            "Lp9/f;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lnc/w$b;->a:Lkotlin/jvm/internal/v;

    iput-boolean p2, p0, Lnc/w$b;->b:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lp9/f;

    .line 2
    .line 3
    check-cast p2, Lp9/f$b;

    .line 4
    .line 5
    instance-of v0, p2, Lnc/v;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lnc/w$b;->a:Lkotlin/jvm/internal/v;

    .line 11
    .line 12
    iget-object v1, v0, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lp9/f;

    .line 15
    .line 16
    invoke-interface {p2}, Lp9/f$b;->getKey()Lp9/f$c;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v1, v2}, Lp9/f;->get(Lp9/f$c;)Lp9/f$b;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    check-cast p2, Lnc/v;

    .line 27
    .line 28
    iget-boolean v0, p0, Lnc/w$b;->b:Z

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-interface {p2}, Lnc/v;->t()Lnc/v;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v1, v0, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Lp9/f;

    .line 40
    .line 41
    invoke-interface {p2}, Lp9/f$b;->getKey()Lp9/f$c;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-interface {v1, v2}, Lp9/f;->minusKey(Lp9/f$c;)Lp9/f;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iput-object v1, v0, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p2, Lnc/v;

    .line 52
    .line 53
    invoke-interface {p2}, Lnc/v;->E()Lp9/f;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    :cond_2
    :goto_0
    invoke-interface {p1, p2}, Lp9/f;->plus(Lp9/f;)Lp9/f;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    return-object p1
.end method
