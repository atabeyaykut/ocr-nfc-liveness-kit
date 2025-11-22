.class public final Lvb/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvb/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Lvb/i$a;

.field public static final b:Lvb/i$a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lvb/i$a;

    invoke-direct {v0}, Lvb/i$a;-><init>()V

    sput-object v0, Lvb/i$a;->a:Lvb/i$a;

    sget-object v0, Lvb/i$a$a;->a:Lvb/i$a$a;

    sput-object v0, Lvb/i$a;->b:Lvb/i$a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
