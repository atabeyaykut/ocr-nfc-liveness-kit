.class public final Lwd/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lud/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lud/f<",
        "TT;",
        "Lrc/a0;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lrc/t;


# instance fields
.field public final a:Ll8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll8/p<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lrc/t;->f:Lrc/t$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "application/json; charset=UTF-8"

    .line 7
    .line 8
    invoke-static {v0}, Lrc/t$a;->a(Ljava/lang/String;)Lrc/t;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lwd/b;->b:Lrc/t;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Ll8/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll8/p<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwd/b;->a:Ll8/p;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Led/e;

    .line 2
    .line 3
    invoke-direct {v0}, Led/e;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ll8/w;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Ll8/w;-><init>(Led/e;)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lwd/b;->a:Ll8/p;

    .line 12
    .line 13
    invoke-virtual {v2, v1, p1}, Ll8/p;->c(Ll8/y;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Led/e;->n()Led/h;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-object v0, Lrc/a0;->a:Lrc/a0$a;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const-string v0, "content"

    .line 26
    .line 27
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lrc/y;

    .line 31
    .line 32
    sget-object v1, Lwd/b;->b:Lrc/t;

    .line 33
    .line 34
    invoke-direct {v0, v1, p1}, Lrc/y;-><init>(Lrc/t;Led/h;)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method
