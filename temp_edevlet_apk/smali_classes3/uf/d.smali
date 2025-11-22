.class public final Luf/d;
.super Laf/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luf/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laf/c<",
        "Luf/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final h:Luf/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Luf/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Luf/d$a;-><init>(Lkotlin/jvm/internal/d;)V

    return-void
.end method

.method public constructor <init>(Luf/c;Luf/f;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "myCityWork"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Laf/c;-><init>(Lr0/p;)V

    iput-object p2, p0, Luf/d;->h:Luf/f;

    return-void
.end method


# virtual methods
.method public final d(II)V
    .locals 3

    new-instance v0, Luf/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Luf/d$b;-><init>(Luf/d;IILp9/d;)V

    const/4 p1, 0x3

    const/4 p2, 0x0

    iget-object v2, p0, Lr0/z;->c:Lnc/a0;

    invoke-static {v2, v1, p2, v0, p1}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    new-instance p1, Luf/d$c;

    invoke-direct {p1, p0, v1}, Luf/d$c;-><init>(Luf/d;Lp9/d;)V

    iget-object p2, p0, Luf/d;->h:Luf/f;

    invoke-static {v2, p2, p1}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    return-void
.end method
