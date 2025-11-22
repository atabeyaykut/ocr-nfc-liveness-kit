.class public final Le/e;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lrc/v;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Le/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/e;

    invoke-direct {v0}, Le/e;-><init>()V

    sput-object v0, Le/e;->a:Le/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lrc/v;

    invoke-direct {v0}, Lrc/v;-><init>()V

    return-object v0
.end method
