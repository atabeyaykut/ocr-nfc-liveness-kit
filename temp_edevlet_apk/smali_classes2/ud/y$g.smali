.class public final Lud/y$g;
.super Lud/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lud/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
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
.field public final a:Ljava/lang/reflect/Method;

.field public final b:I

.field public final c:Lrc/q;

.field public final d:Lud/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lud/f<",
            "TT;",
            "Lrc/a0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;ILrc/q;Lud/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "I",
            "Lrc/q;",
            "Lud/f<",
            "TT;",
            "Lrc/a0;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lud/y;-><init>()V

    iput-object p1, p0, Lud/y$g;->a:Ljava/lang/reflect/Method;

    iput p2, p0, Lud/y$g;->b:I

    iput-object p3, p0, Lud/y$g;->c:Lrc/q;

    iput-object p4, p0, Lud/y$g;->d:Lud/f;

    return-void
.end method


# virtual methods
.method public final a(Lud/a0;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lud/a0;",
            "TT;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lud/y$g;->d:Lud/f;

    invoke-interface {v0, p2}, Lud/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrc/a0;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p2, p0, Lud/y$g;->c:Lrc/q;

    invoke-virtual {p1, p2, v0}, Lud/a0;->c(Lrc/q;Lrc/a0;)V

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to convert "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to RequestBody"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object p1, p0, Lud/y$g;->a:Ljava/lang/reflect/Method;

    iget v1, p0, Lud/y$g;->b:I

    invoke-static {p1, v1, p2, v0}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
.end method
