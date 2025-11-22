.class public final Lud/l$a;
.super Lud/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lud/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Ljava/lang/Object;",
        "ReturnT:",
        "Ljava/lang/Object;",
        ">",
        "Lud/l<",
        "TResponseT;TReturnT;>;"
    }
.end annotation


# instance fields
.field public final d:Lud/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lud/c<",
            "TResponseT;TReturnT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lud/b0;Lrc/d$a;Lud/f;Lud/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lud/b0;",
            "Lrc/d$a;",
            "Lud/f<",
            "Lrc/d0;",
            "TResponseT;>;",
            "Lud/c<",
            "TResponseT;TReturnT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lud/l;-><init>(Lud/b0;Lrc/d$a;Lud/f;)V

    iput-object p4, p0, Lud/l$a;->d:Lud/c;

    return-void
.end method


# virtual methods
.method public final c(Lud/u;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p2, p0, Lud/l$a;->d:Lud/c;

    invoke-interface {p2, p1}, Lud/c;->b(Lud/u;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
