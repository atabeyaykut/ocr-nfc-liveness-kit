.class public final Lud/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lud/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lud/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lud/f<",
        "Lrc/d0;",
        "Lrc/d0;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lud/a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lud/a$a;

    invoke-direct {v0}, Lud/a$a;-><init>()V

    sput-object v0, Lud/a$a;->a:Lud/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lrc/d0;

    .line 2
    .line 3
    :try_start_0
    invoke-static {p1}, Lud/h0;->a(Lrc/d0;)Lrc/c0;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p1}, Lrc/d0;->close()V

    .line 8
    .line 9
    .line 10
    return-object v0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    invoke-virtual {p1}, Lrc/d0;->close()V

    .line 13
    .line 14
    .line 15
    throw v0
.end method
