.class public final Lud/a$f;
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
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lud/f<",
        "Lrc/d0;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lud/a$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lud/a$f;

    invoke-direct {v0}, Lud/a$f;-><init>()V

    sput-object v0, Lud/a$f;->a:Lud/a$f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lrc/d0;

    .line 2
    .line 3
    invoke-virtual {p1}, Lrc/d0;->close()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1
.end method
