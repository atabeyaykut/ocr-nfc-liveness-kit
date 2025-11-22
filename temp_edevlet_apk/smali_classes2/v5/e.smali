.class public final Lv5/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln5/q;


# instance fields
.field public final a:Ln5/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln5/l<",
            "Ln5/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln5/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln5/l<",
            "Ln5/q;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Ln5/l;->b:Ln5/l$a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput-object p1, p0, Lv5/e;->a:Ln5/l;

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 12
    .line 13
    const-string v0, "Missing primary primitive."

    .line 14
    .line 15
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;[B)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lv5/c;

    iget-object v1, p0, Lv5/e;->a:Ln5/l;

    invoke-direct {v0, v1, p1, p2}, Lv5/c;-><init>(Ln5/l;Ljava/io/InputStream;[B)V

    return-object v0
.end method

.method public final b([BLjava/io/FileOutputStream;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv5/e;->a:Ln5/l;

    .line 2
    .line 3
    iget-object v0, v0, Ln5/l;->b:Ln5/l$a;

    .line 4
    .line 5
    iget-object v0, v0, Ln5/l$a;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Ln5/q;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Ln5/q;->b([BLjava/io/FileOutputStream;)Ljava/io/OutputStream;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
