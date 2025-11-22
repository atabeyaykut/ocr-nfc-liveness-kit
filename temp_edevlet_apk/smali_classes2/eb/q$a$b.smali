.class public final Leb/q$a$b;
.super Leb/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leb/q$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Leb/s;


# direct methods
.method public constructor <init>(Lra/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Leb/q$a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Leb/q$a$b;->a:Leb/s;

    .line 5
    .line 6
    return-void
.end method
