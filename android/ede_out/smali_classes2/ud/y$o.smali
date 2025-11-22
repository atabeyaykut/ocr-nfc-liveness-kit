.class public final Lud/y$o;
.super Lud/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lud/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lud/y<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lud/y;-><init>()V

    iput-object p1, p0, Lud/y$o;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(Lud/a0;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lud/a0;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lud/a0;->e:Lrc/x$a;

    .line 2
    .line 3
    iget-object v0, p0, Lud/y$o;->a:Ljava/lang/Class;

    .line 4
    .line 5
    invoke-virtual {p1, v0, p2}, Lrc/x$a;->e(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
