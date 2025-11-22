.class public final Ljh/c;
.super Laf/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljh/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laf/c<",
        "Ljh/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final h:Ljh/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljh/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljh/c$a;-><init>(Lkotlin/jvm/internal/d;)V

    return-void
.end method

.method public constructor <init>(Ljh/b;Ljh/f;)V
    .locals 4

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "mobileAccidentIntroductionWork"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Laf/c;-><init>(Lr0/p;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Ljh/c;->h:Ljh/f;

    .line 15
    .line 16
    new-instance p1, Ljh/d;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {p1, p0, v0}, Ljh/d;-><init>(Ljh/c;Lp9/d;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lr0/z;->c:Lnc/a0;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x3

    .line 26
    invoke-static {v1, v0, v2, p1, v3}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 27
    .line 28
    .line 29
    new-instance p1, Ljh/e;

    .line 30
    .line 31
    invoke-direct {p1, p0, v0}, Ljh/e;-><init>(Ljh/c;Lp9/d;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v1, p2, p1}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
