.class public final Lyb/m0;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lgb/p;",
        "Lgb/p;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lyb/k0;


# direct methods
.method public constructor <init>(Lyb/k0;)V
    .locals 0

    iput-object p1, p0, Lyb/m0;->a:Lyb/k0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lgb/p;

    .line 2
    .line 3
    const-string v0, "it"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lyb/m0;->a:Lyb/k0;

    .line 9
    .line 10
    iget-object v0, v0, Lyb/k0;->a:Lyb/n;

    .line 11
    .line 12
    iget-object v0, v0, Lyb/n;->d:Lib/g;

    .line 13
    .line 14
    invoke-static {p1, v0}, Lib/f;->a(Lgb/p;Lib/g;)Lgb/p;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method
