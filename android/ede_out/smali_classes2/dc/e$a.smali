.class public final Ldc/e$a;
.super Ldc/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Ldc/e$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldc/e$a;

    invoke-direct {v0}, Ldc/e$a;-><init>()V

    sput-object v0, Ldc/e$a;->a:Ldc/e$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ldc/e;-><init>()V

    return-void
.end method
