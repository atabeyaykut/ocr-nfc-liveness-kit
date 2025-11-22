.class public final Lud/a$e;
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
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lud/f<",
        "Lrc/d0;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lud/a$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lud/a$e;

    invoke-direct {v0}, Lud/a$e;-><init>()V

    sput-object v0, Lud/a$e;->a:Lud/a$e;

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
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 7
    .line 8
    return-object p1
.end method
