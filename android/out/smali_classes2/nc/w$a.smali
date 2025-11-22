.class public final Lnc/w$a;
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


# static fields
.field public static final a:Lnc/w$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnc/w$a;

    invoke-direct {v0}, Lnc/w$a;-><init>()V

    sput-object v0, Lnc/w$a;->a:Lnc/w$a;

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
    .locals 1

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
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p2, Lnc/v;

    .line 10
    .line 11
    invoke-interface {p2}, Lnc/v;->t()Lnc/v;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    :cond_0
    invoke-interface {p1, p2}, Lp9/f;->plus(Lp9/f;)Lp9/f;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method
