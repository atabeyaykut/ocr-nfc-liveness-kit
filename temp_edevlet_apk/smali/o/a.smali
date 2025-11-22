.class public final Lo/a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lrc/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lo/c;


# direct methods
.method public constructor <init>(Lo/c;)V
    .locals 0

    iput-object p1, p0, Lo/a;->a:Lo/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lrc/c;->p:Lrc/c$b;

    .line 2
    .line 3
    iget-object v1, p0, Lo/a;->a:Lo/c;

    .line 4
    .line 5
    iget-object v1, v1, Lo/c;->f:Lrc/q;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lrc/c$b;->a(Lrc/q;)Lrc/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method
