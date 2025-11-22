.class public final Lgg/b;
.super Laf/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgg/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laf/c<",
        "Lfg/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final h:Lgg/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgg/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgg/b$a;-><init>(Lkotlin/jvm/internal/d;)V

    return-void
.end method

.method public constructor <init>(Lfg/e;Lgg/c;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileWork"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Laf/c;-><init>(Lr0/p;)V

    iput-object p2, p0, Lgg/b;->h:Lgg/c;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 5

    .line 1
    sget-object v0, Lgg/b$b;->a:Lgg/b$b;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lr0/z;->c(Lx9/l;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lgg/b$c;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, v1}, Lgg/b$c;-><init>(Lgg/b;Lp9/d;)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    const/4 v3, 0x0

    .line 14
    iget-object v4, p0, Lr0/z;->c:Lnc/a0;

    .line 15
    .line 16
    invoke-static {v4, v1, v3, v0, v2}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 17
    .line 18
    .line 19
    new-instance v0, Lgg/b$d;

    .line 20
    .line 21
    invoke-direct {v0, p0, v1}, Lgg/b$d;-><init>(Lgg/b;Lp9/d;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lgg/b;->h:Lgg/c;

    .line 25
    .line 26
    invoke-static {v4, v1, v0}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
