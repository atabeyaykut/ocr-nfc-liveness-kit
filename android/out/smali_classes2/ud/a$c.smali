.class public final Lud/a$c;
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
    name = "c"
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
.field public static final a:Lud/a$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lud/a$c;

    invoke-direct {v0}, Lud/a$c;-><init>()V

    sput-object v0, Lud/a$c;->a:Lud/a$c;

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

    check-cast p1, Lrc/d0;

    return-object p1
.end method
