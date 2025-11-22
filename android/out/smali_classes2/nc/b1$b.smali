.class public final Lnc/b1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnc/b1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp9/f$c<",
        "Lnc/b1;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:Lnc/b1$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnc/b1$b;

    invoke-direct {v0}, Lnc/b1$b;-><init>()V

    sput-object v0, Lnc/b1$b;->a:Lnc/b1$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
