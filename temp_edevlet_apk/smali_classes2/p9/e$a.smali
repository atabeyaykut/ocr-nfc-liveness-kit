.class public final Lp9/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp9/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp9/f$c<",
        "Lp9/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:Lp9/e$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp9/e$a;

    invoke-direct {v0}, Lp9/e$a;-><init>()V

    sput-object v0, Lp9/e$a;->a:Lp9/e$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
