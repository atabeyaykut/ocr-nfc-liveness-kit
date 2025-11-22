.class public final Lma/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lma/a$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lma/a$a<",
        "Lma/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lma/r;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lma/r;

    invoke-direct {v0}, Lma/r;-><init>()V

    sput-object v0, Lma/r;->a:Lma/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
