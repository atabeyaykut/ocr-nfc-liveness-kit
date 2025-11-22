.class public final Lbe/j;
.super Laf/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbe/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laf/c<",
        "Lbe/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final h:Lbe/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbe/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbe/j$a;-><init>(Lkotlin/jvm/internal/d;)V

    return-void
.end method

.method public constructor <init>(Lbe/h;Lbe/n;Lbe/a;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manualDynamicFieldWork"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verifyWork"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Laf/c;-><init>(Lr0/p;)V

    iput-object p2, p0, Lbe/j;->h:Lbe/n;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lbe/j$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lbe/j$b;-><init>(Lbe/j;Ljava/lang/String;Lp9/d;)V

    const/4 p1, 0x3

    const/4 v2, 0x0

    iget-object v3, p0, Lr0/z;->c:Lnc/a0;

    invoke-static {v3, v1, v2, v0, p1}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    new-instance p1, Lbe/j$c;

    invoke-direct {p1, p0, v1}, Lbe/j$c;-><init>(Lbe/j;Lp9/d;)V

    iget-object v0, p0, Lbe/j;->h:Lbe/n;

    invoke-static {v3, v0, p1}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    return-void
.end method
